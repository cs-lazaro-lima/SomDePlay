//
//  DeleteRequestable.swift
//  SomDePlay
//
//  Created by Lazaro Lima on 28/11/2017.
//  Copyright © 2017 Lazaro Lima. All rights reserved.
//

import Foundation

protocol DeleteRequestable {
    func delete(url: String, completionHandler: @escaping (Data?, NetworkError?) -> Void)
}
