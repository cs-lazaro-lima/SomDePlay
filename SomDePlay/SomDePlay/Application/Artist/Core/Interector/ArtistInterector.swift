//
//  ArtistInterector.swift
//  SomDePlay
//
//  Created by Lazaro Lima on 29/11/2017.
//  Copyright © 2017 Lazaro Lima. All rights reserved.
//

import Foundation

struct ArtistInterector {
    
    private let geteway: ArtistGateway
    private(set) var presenter: ArtistPresenter
    
    init(geteway: ArtistGateway, presenter: ArtistPresenter) {
        self.geteway = geteway
        self.presenter = presenter
    }
    
    func getArtist(id: Int) {
        geteway.artist(byId: id) { result in
            switch result {
            case .success(let artist):
                self.presenter.onSuccess(artist: artist)
            case .fail(let error):
                self.presenter.onNetworkError(error: error)
            }
        }
    }
}
