//
//  SearchArtistNetworkGateway.swift
//  SomDePlay
//
//  Created by Lazaro Lima on 30/11/2017.
//  Copyright © 2017 Lazaro Lima. All rights reserved.
//

import Foundation

struct SearchArtistNetworkGateway: SearchArtistGateway {
    private let url = "http://api.deezer.com/search/artist?q="
    private let getRequest: GetRequestable
    
    init(getRequest: GetRequestable) {
        self.getRequest = getRequest
    }
    
    func artists(byName name: String, _ completionHandler: @escaping ((Result<[Artist], NetworkError>) -> Void)) {
        getRequest.get(url: "\(url)/\(name)") { ( data , error) in
            let result = GenerateResultList<ArtistDecodableEntity, Artist>(self.mappingArtists).generate(data, error)
            
            completionHandler(result)
        }
    }
        
    private func mappingArtists(entitys:[ArtistDecodableEntity]) -> [Artist] {
        return entitys.map({
            Artist(id: $0.id, name: $0.name, link: $0.link, share: $0.share, picture: $0.picture, picture_small: $0.picture_small, picture_medium: $0.picture_medium, picture_big: $0.picture_big, picture_xl: $0.picture_xl, nb_album: $0.nb_album, nb_fan: $0.nb_fan, radio: $0.radio, tracklist: $0.tracklist, type: $0.type)
        })
    }
    
    
}

