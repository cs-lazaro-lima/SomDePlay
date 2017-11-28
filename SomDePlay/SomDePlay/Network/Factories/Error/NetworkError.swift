//
//  NetworkError.swift
//  SomDePlay
//
//  Created by Lazaro Lima on 27/11/2017.
//  Copyright © 2017 Lazaro Lima. All rights reserved.
//

enum NetworkError: Error {
    case params
    case mapping
    case weakConnection
    case offline
    case other(Error?)
    
    var localizedDescription: String {
        switch self {
        case .params:
            return String.NetworkError.mapping
        case .mapping:
            return String.NetworkError.mapping
        case .weakConnection:
            return String.NetworkError.weakConnection
        case .offline:
            return String.NetworkError.offline
        default:
            return String.NetworkError.other
        }
    }
    
    var rawValue: Int {
        switch self {
        case .params:
            return 1
        case .mapping:
            return 2
        case .weakConnection:
            return 3
        case .offline:
            return 4
        default:
            return 5
        }
    }
}

