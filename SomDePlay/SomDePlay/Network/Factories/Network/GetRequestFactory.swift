//
//  GetRequestFactory.swift
//  SomDePlay
//
//  Created by Lazaro Lima on 27/11/2017.
//  Copyright © 2017 Lazaro Lima. All rights reserved.
//

struct GetRequestFactory {
    static func make() -> GetRequestable {
        return GetRequest()
    }
}

