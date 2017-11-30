//
//  ArtistPresenterFactory.swift
//  SomDePlay
//
//  Created by Lazaro Lima on 29/11/2017.
//  Copyright © 2017 Lazaro Lima. All rights reserved.
//

import Foundation

struct ArtistPresenterFactory {
    static func make(onSuccess:@escaping (Artist) -> Void, onNetworkError: @escaping (NetworkError) -> Void) -> ArtistPresenter {
        return ArtistPresenter(onSuccess: onSuccess, onNetworkError: onNetworkError)
    }
}
