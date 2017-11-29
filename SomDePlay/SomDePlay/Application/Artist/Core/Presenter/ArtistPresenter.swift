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
    private let onEmpty: () -> Void
    
    init(onSuccess:@escaping (Artist) -> Void, onNetworkError: @escaping (NetworkError) -> Void, onEmpty:@escaping () -> Void) {
        self.onSuccess = onSuccess
        self.onNetworkError = onNetworkError
        self.onEmpty = onEmpty
    }
    
    func show(artist: Artist) {
        onSuccess(artist)
    }
    
    func show(error: NetworkError) {
        onNetworkError(error)
    }
    
    func showEmpty() {
        onEmpty()
    }
}
