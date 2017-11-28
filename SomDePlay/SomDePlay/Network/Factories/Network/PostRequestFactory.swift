//
//  PostRequestFactory.swift
//  SomDePlay
//
//  Created by Lazaro Lima on 28/11/2017.
//  Copyright © 2017 Lazaro Lima. All rights reserved.
//

struct PostRequestFactory {
    static func make() -> PostRequestable {
        return PostRequest()
    }
}
