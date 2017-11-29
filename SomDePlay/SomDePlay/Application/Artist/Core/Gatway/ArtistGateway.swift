//
//  ArtistGateway.swift
//  SomDePlay
//
//  Created by Lazaro Lima on 29/11/2017.
//  Copyright © 2017 Lazaro Lima. All rights reserved.
//

protocol ArtistGateway {
    func artist(byId id: Int, _ completionHandler: @escaping CompletionHandler<Artist, NetworkError>)
}
