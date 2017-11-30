//
//  SearchArtistInterector.swift
//  SomDePlay
//
//  Created by Lazaro Lima on 30/11/2017.
//  Copyright © 2017 Lazaro Lima. All rights reserved.
//

import Foundation

struct SearchArtistInterector {
    
    private let geteway: SearchArtistGateway
    private(set) var presenter: SearchArtistPresenter
    
    
    init(geteway: SearchArtistGateway, presenter: SearchArtistPresenter) {
        self.geteway = geteway
        self.presenter = presenter
    }
    
    func getArtists(name: String) {
        
        self.geteway.artists(byName: name) { result in
            switch result {
            case .success(let artists):
                self.presenter.searchSuccess(artists: artists)
            case .fail(let error):
                self.presenter.searchFail(error: error)
            }
        }
    }
    
}
