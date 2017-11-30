//
//  ArtistCollectionView.swift
//  SomDePlay
//
//  Created by Lazaro Lima on 28/11/2017.
//  Copyright © 2017 Lazaro Lima. All rights reserved.
//

import UIKit

class ArtistCollectionView: UIView {
    
    private let nameLabel = ArtistViewLabelFactory.make()
    private let pictureImage = ArtistViewImageFactory.make()
    private let nextArtistButton = ArtistViewButtonFactory.make(image: "seta_right")
    private let previousArtistButton = ArtistViewButtonFactory.make(image: "seta_left")
    
    lazy var presenter: ArtistPresenter = ArtistPresenterFactory.make(onSuccess: { artist in
        self.show(artist: artist)
    }, onNetworkError: { netwrokError in
        print(netwrokError)
    })
    
    init(parentView: UIView) {
        super.init(frame: .zero)
        setupView(parentView: parentView)
        setupSubViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("Deu ruim")
    }
    
    private func setupView(parentView: UIView) {
        backgroundColor = .background
        parentView.addSubview(self)
        translatesAutoresizingMaskIntoConstraints = false
        let safeArea = parentView.safeAreaLayoutGuide
        topAnchor.constraint(equalTo: safeArea.topAnchor).isActive = true
        trailingAnchor.constraint(equalTo: parentView.trailingAnchor).isActive = true
        bottomAnchor.constraint(equalTo: safeArea.bottomAnchor).isActive = true
        leadingAnchor.constraint(equalTo: parentView.leadingAnchor).isActive = true
    }
    
    private func setupSubViews() {
        addSubview(nameLabel)
        nameLabel.heightAnchor.constraint(equalToConstant: 50.0).isActive = true
        nameLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 20.0).isActive = true
        nameLabel.rightAnchor.constraint(equalTo: rightAnchor, constant: -20.0).isActive = true
        nameLabel.topAnchor.constraint(equalTo: topAnchor, constant: 10.0).isActive = true
        
        addSubview(pictureImage)
        pictureImage.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 30.0).isActive = true
        pictureImage.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        pictureImage.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.4).isActive = true
        pictureImage.widthAnchor.constraint(equalTo: heightAnchor, multiplier: 0.4).isActive = true
        
        addSubview(nextArtistButton)
        nextArtistButton.centerXAnchor.constraint(equalTo: centerXAnchor, constant: 80.0).isActive = true
        nextArtistButton.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.12).isActive = true
        nextArtistButton.widthAnchor.constraint(equalTo: heightAnchor, multiplier: 0.12).isActive = true
        nextArtistButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -50.0).isActive = true
        
        
        addSubview(previousArtistButton)
        previousArtistButton.centerXAnchor.constraint(equalTo: centerXAnchor, constant: -80.0).isActive = true
        previousArtistButton.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.12).isActive = true
        previousArtistButton.widthAnchor.constraint(equalTo: heightAnchor, multiplier: 0.12).isActive = true
        previousArtistButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -50.0).isActive = true
    }

    func show(artist: Artist) {
        DispatchQueue.main.async {
            self.nameLabel.text = artist.name
            self.pictureImage.download(url: artist.picture)
        }
    }

}

