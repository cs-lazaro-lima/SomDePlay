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
    
    init() {
        super.init(nibName: nil, bundle: nil)
        mainView = ArtistCollectionView(parentView: view)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("Deu ruim")
    }
}
