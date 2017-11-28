//
//  CompletionHandler.swift
//  SomDePlay
//
//  Created by Lazaro Lima on 27/11/2017.
//  Copyright © 2017 Lazaro Lima. All rights reserved.
//

typealias CompletionHandler<T, E: Error> = ((Result<T, E>) -> Void)
