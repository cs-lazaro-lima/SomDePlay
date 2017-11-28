//
//  PutRequestable.swift
//  SomDePlay
//
//  Created by Lazaro Lima on 28/11/2017.
//  Copyright © 2017 Lazaro Lima. All rights reserved.
//

import Foundation

protocol PutRequestable {
    func put(url: String, params: [String: Any], completionHandler: @escaping (Data?, NetworkError?) -> Void)
}
