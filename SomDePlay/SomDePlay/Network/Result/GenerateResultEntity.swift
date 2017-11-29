//
//  GenerateResultEntity.swift
//  SomDePlay
//
//  Created by Lazaro Lima on 29/11/2017.
//  Copyright © 2017 Lazaro Lima. All rights reserved.
//

import Foundation

class GenerateResultEntity<DecodableEntity: Decodable, Entity> {
    
    private let structGenerator: (DecodableEntity) -> Entity
    
    init(_ structGenerator: @escaping (DecodableEntity) -> Entity) {
        self.structGenerator = structGenerator
    }
    
    func generate(_ data: Data?, _ error: NetworkError?) -> Result<Entity, NetworkError> {
        if let data = data {
            do {
                let entityDecodable = try JSONDecoder().decode(DecodableEntity.self, from: data)
                let entity = self.structGenerator(entityDecodable)
                return Result.success(entity)
            } catch {
                return Result.fail(.mapping)
            }
        } else if let error = error {
            return Result.fail(error)
        } else {
            return Result.fail(NetworkError.other(nil))
        }
    }
    
}
