//
//  SerachArtistViewController.swift
//  SomDePlay
//
//  Created by Lazaro Lima on 30/11/2017.
//  Copyright © 2017 Lazaro Lima. All rights reserved.
//

import UIKit

final class SerachArtistViewController: UIViewController {

    private var mainView: SerachArtistView!
    var serachArtistRouter: SerachArtistRouter!
  //  private lazy var interector: SearchArtistInterector = SearchArtistInterectorFactory.make(presenter: mainView.presenter)
    
    init() {
        super.init(nibName: nil, bundle: nil)
        mainView = SerachArtistView(parentView: view)
        title = String.NavigationTitle.seachArtist
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("Deu ruim")
    }
}
