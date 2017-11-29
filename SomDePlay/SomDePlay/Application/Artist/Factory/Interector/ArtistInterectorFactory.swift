//
//  ArtistInterectorFactory.swift
//  SomDePlay
//
//  Created by Lazaro Lima on 29/11/2017.
//  Copyright © 2017 Lazaro Lima. All rights reserved.
//

import Foundation

struct ArtistInterectorFactory {
    static func make(presenter: ArtistPresenter) -> ArtistInterector {
        return ArtistInterector(geteway: ArtistGatwayFactory.make(), presenter: presenter)
    }
}
