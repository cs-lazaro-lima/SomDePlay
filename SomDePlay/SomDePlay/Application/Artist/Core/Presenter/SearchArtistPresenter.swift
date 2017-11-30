//
//  SearchArtistPresenter.swift
//  SomDePlay
//
//  Created by Lazaro Lima on 30/11/2017.
//  Copyright © 2017 Lazaro Lima. All rights reserved.
//

import Foundation

final class SearchArtistPresenter {
    
    private let onSearchSuccess: ([Artist]) -> Void
    private let onSearchFail: (NetworkError) -> Void
    
    init(onSearchSuccess:@escaping ([Artist]) -> Void, onSearchFail: @escaping (NetworkError) -> Void) {
        self.onSearchSuccess = onSearchSuccess
        self.onSearchFail = onSearchFail
    }
    
    func searchSuccess(artists: [Artist]) {
        onSearchSuccess(artists)
    }
    
    func searchFail(error: NetworkError) {
        onSearchFail(error)
    }

}
