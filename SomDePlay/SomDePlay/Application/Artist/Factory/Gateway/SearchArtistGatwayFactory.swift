//
//  SearchArtistGatewayFactory.swift
//  SomDePlay
//
//  Created by Lazaro Lima on 30/11/2017.
//  Copyright © 2017 Lazaro Lima. All rights reserved.
//

import Foundation

struct SearchArtistGatewayFactory {
    static func make() -> SearchArtistGateway {
       return SearchArtistNetworkGateway(getRequest: GetRequestFactory.make())
    }
}
