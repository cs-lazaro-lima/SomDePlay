//
//  SearchArtistGateway.swift
//  SomDePlay
//
//  Created by Lazaro Lima on 30/11/2017.
//  Copyright © 2017 Lazaro Lima. All rights reserved.
//

protocol SearchArtistGateway {
    func artists(byName name: String, _ completionHandler: @escaping CompletionHandler<[Artist], NetworkError>)
}
