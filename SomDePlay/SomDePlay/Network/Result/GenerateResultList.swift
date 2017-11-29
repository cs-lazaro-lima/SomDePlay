//
//  NetworkResult.swift
//  SomDePlay
//
//  Created by Lazaro Lima on 27/11/2017.
//  Copyright © 2017 Lazaro Lima. All rights reserved.
//

import Foundation

class GenerateResultList<DecodableEntity: Decodable, Entity> {
    
    private let structGenerator: ([DecodableEntity]) -> [Entity]
    
    init(_ structGenerator: @escaping ([DecodableEntity]) -> [Entity]) {
        self.structGenerator = structGenerator
    }
    
    func generate(_ data: Data?, _ error: NetworkError?) -> Result<[Entity], NetworkError> {
        if let data = data {
            do {
                let listDecodable = try JSONDecoder().decode([DecodableEntity].self, from: data)
                let list = self.structGenerator(listDecodable)
                return Result.success(list)
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

