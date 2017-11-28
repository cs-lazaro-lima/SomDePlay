//
//  DeleteRequestFactory.swift
//  SomDePlay
//
//  Created by Lazaro Lima on 28/11/2017.
//  Copyright © 2017 Lazaro Lima. All rights reserved.
//

struct DeleteRequestFactory {
    static func make() -> DeleteRequestable {
        return DeleteRequest()
    }
}

