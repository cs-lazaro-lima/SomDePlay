//
//  GetRequestable.swift
//  SomDePlay
//
//  Created by Lazaro Lima on 28/11/2017.
//  Copyright © 2017 Lazaro Lima. All rights reserved.
//

protocol GetRequestable {
    func get(url: String, completionHandler: @escaping (Data?, NetworkError?) -> Void)
}
