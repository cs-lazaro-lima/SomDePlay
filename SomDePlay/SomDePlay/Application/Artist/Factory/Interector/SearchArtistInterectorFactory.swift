//
//  SearchArtistInterectorFactory.swift
//  SomDePlay
//
//  Created by Lazaro Lima on 30/11/2017.
//  Copyright © 2017 Lazaro Lima. All rights reserved.
//

import Foundation

struct SearchArtistInterectorFactory {
    static func make(presenter: SearchArtistPresenter) -> SearchArtistInterector {
        return SearchArtistInterector(geteway: SearchArtistGatewayFactory.make(), presenter: presenter)
    }
}
