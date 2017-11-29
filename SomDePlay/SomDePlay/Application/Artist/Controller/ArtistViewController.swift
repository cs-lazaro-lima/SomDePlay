//
//  ArtistViewController.swift
//  SomDePlay
//
//  Created by Lazaro Lima on 28/11/2017.
//  Copyright © 2017 Lazaro Lima. All rights reserved.
//

import UIKit

final class ArtistViewController: UIViewController {
    
    private var mainView: ArtistCollectionView!
    var artistRouter: ArtistRouter!
    private lazy var interector: ArtistInterector = ArtistInterectorFactory.make(presenter: mainView.presenter)
    
    init() {
        super.init(nibName: nil, bundle: nil)
        mainView = ArtistCollectionView(parentView: view)
        title = String.NavigationTitle.artist
        interector.getArtist(id: 1)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("Deu ruim")
    }
    
    
}
