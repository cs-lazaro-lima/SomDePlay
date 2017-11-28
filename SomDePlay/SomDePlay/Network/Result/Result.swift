//
//  Result.swift
//  SomDePlay
//
//  Created by Lazaro Lima on 27/11/2017.
//  Copyright © 2017 Lazaro Lima. All rights reserved.
//

import Foundation

enum Result<T, E> where E: Error {
    case success(T)
    case fail(E)
}

