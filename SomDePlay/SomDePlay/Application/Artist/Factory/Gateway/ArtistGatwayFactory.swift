//
//  ArtistGatwayFactory.swift
//  SomDePlay
//
//  Created by Lazaro Lima on 29/11/2017.
//  Copyright © 2017 Lazaro Lima. All rights reserved.
//

import Foundation

struct ArtistGatwayFactory {
    static func make() -> ArtistGateway {
        return ArtistByIdNetworkGateway(getRequest: GetRequestFactory.make())
    }
}
