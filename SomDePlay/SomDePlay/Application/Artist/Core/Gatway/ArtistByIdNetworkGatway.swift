//
//  ArtistByIdNetworkGateway.swift
//  SomDePlay
//
//  Created by Lazaro Lima on 29/11/2017.
//  Copyright © 2017 Lazaro Lima. All rights reserved.
//

import Foundation

struct ArtistByIdNetworkGateway: ArtistGateway {
    
    private let url = "https://api.deezer.com/artist/"
    private let getRequest: GetRequestable
    
    init(getRequest: GetRequestable) {
        self.getRequest = getRequest
    }
    
    func artist(byId id: Int, _ completionHandler: @escaping ((Result<Artist, NetworkError>) -> Void)) {
        getRequest.get(url: "\(url)/\(id)") { ( data , error) in
            let result = GenerateResultEntity<ArtistDecodableEntity, Artist>(self.mappingArtist).generate(data, error)
            completionHandler(result)
        }
    }
    
    private func mappingArtist(entity: ArtistDecodableEntity) -> Artist {
        return Artist(id: entity.id, name: entity.name, link: URL(string: entity.link)!, share: URL(string: entity.share)!, picture: URL(string: entity.picture_medium)!, quantityAlbum: entity.nb_album, quantityFa: entity.nb_fan, isRadio: entity.radio, tracklist: URL(string: entity.tracklist)!, type: entity.type)
    }
}
