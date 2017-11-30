//
//  ArtistPresenterFactoryFactory.swift
//  SomDePlay
//
//  Created by Lazaro Lima on 30/11/2017.
//  Copyright © 2017 Lazaro Lima. All rights reserved.
//

import Foundation

struct SearchArtistPresenterFactory {
    static func make(onSearchSuccess:@escaping ([Artist]) -> Void, onSearchFail: @escaping (NetworkError) -> Void) -> SearchArtistPresenter {
        return SearchArtistPresenter(onSearchSuccess: onSearchSuccess, onSearchFail: onSearchFail)
    }
}
