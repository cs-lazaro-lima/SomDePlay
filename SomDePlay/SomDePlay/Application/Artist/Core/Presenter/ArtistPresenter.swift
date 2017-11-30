//
//  ArtistPresenter.swift
//  SomDePlay
//
//  Created by Lazaro Lima on 28/11/2017.
//  Copyright © 2017 Lazaro Lima. All rights reserved.
//

import Foundation

final class ArtistPresenter {
    
    private let onSuccess: (Artist) -> Void
    private let onNetworkError: (NetworkError) -> Void
    
    init(onSuccess:@escaping (Artist) -> Void, onNetworkError: @escaping (NetworkError) -> Void) {
        self.onSuccess = onSuccess
        self.onNetworkError = onNetworkError
    }
    
    func onSuccess(artist: Artist) {
        onSuccess(artist)
    }
    
    func onNetworkError(error: NetworkError) {
        onNetworkError(error)
    }
    
}
