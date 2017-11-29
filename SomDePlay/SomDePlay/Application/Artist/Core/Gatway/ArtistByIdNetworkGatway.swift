//
//  ArtistByIdNetworkGateway.swift
//  SomDePlay
//
//  Created by Lazaro Lima on 29/11/2017.
//  Copyright © 2017 Lazaro Lima. All rights reserved.
//

import Foundation

struct ArtistByIdNetworkGateway: ArtistGateway {
    
  //  private let url = "http://api.deezer.com/artist/"
    private let getRequest: GetRequestable
    
    init(getRequest: GetRequestable) {
        self.getRequest = getRequest
    }
    
    func artist(byId id: Int, _ completionHandler: @escaping ((Result<Artist, NetworkError>) -> Void)) {
        getRequest.get(url: "https://api.deezer.com/artist/1") { ( data , error) in
            let result = GenerateResultEntity<ArtistDecodableEntity, Artist>(self.mappingArtist).generate(data, error)
            
            completionHandler(result)
        }
    }
    
    private func mappingArtist(entity: ArtistDecodableEntity) -> Artist {
        return Artist(id: entity.id, name: entity.name, link: entity.link, share: entity.share, picture: entity.picture, picture_small: entity.picture_small, picture_medium: entity.picture_medium, picture_big: entity.picture_big, picture_xl: entity.picture_xl, nb_album: entity.nb_album, nb_fan: entity.nb_fan, radio: entity.radio, tracklist: entity.tracklist, type: entity.type)
    }
}
