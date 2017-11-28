//
//  GetRequest.swift
//  SomDePlay
//
//  Created by Lazaro Lima on 27/11/2017.
//  Copyright © 2017 Lazaro Lima. All rights reserved.
//

import Foundation
import UIKit

private var getRequestCache: [String: Data] = [:]

final class GetRequest: GetRequestable {
    
    
    func get(url urlString: String, completionHandler: @escaping (Data?, NetworkError?) -> Void) {
        if let cachedData = getRequestCache[urlString] {
            return completionHandler(cachedData, nil)
        }
        makeRequest(url: urlString, completionHandler: completionHandler)
    }
    
    private func makeRequest(url urlString: String, completionHandler: @escaping (Data?, NetworkError?) -> Void) {
        UIApplication.shared.isNetworkActivityIndicatorVisible = true
        let fullUrl = urlString.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) ?? ""
        guard let url = URL(string: fullUrl) else { return }
        let sessionConfig = URLSessionConfiguration.default
        let session = URLSession(configuration: sessionConfig, delegate: nil, delegateQueue: nil)
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        
        let task = session.dataTask(with: request) { data, _, error in
            DispatchQueue.main.async { UIApplication.shared.isNetworkActivityIndicatorVisible = false }
            completionHandler(data, NetworkError.other(error))
            if let data = data {
                getRequestCache[urlString] = data
            }
        }

        task.resume()
        session.finishTasksAndInvalidate()
    }
    
}
