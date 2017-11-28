//
//  PutRequest.swift
//  SomDePlay
//
//  Created by Lazaro Lima on 28/11/2017.
//  Copyright © 2017 Lazaro Lima. All rights reserved.
//

import Foundation
import UIKit


private var putRequestCache: [String: Data] = [:]

final class PutRequest: PutRequestable {
    
    func put(url: String, params: [String : Any], completionHandler: @escaping (Data?, NetworkError?) -> Void) {
        if let cachedData = putRequestCache[url] {
            completionHandler(cachedData, nil)
        }
        makeRequest(url: url, params: params, completionHandler: completionHandler)
    }
    
    private func makeRequest(url urlString: String, params: [String: Any], completionHandler: @escaping (Data?, NetworkError?) -> Void) {
        UIApplication.shared.isNetworkActivityIndicatorVisible = true
        let fullUrl = urlString.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) ?? ""
        guard let url = URL(string: fullUrl) else { return }
        let sessionConfig = URLSessionConfiguration.default
        let session = URLSession(configuration: sessionConfig, delegate: nil, delegateQueue: nil)
        var request = URLRequest(url: url)
        request.httpMethod = "PUT"
        
        do {
            request.httpBody = try JSONSerialization.data(withJSONObject: params, options: .prettyPrinted)
        } catch {
            completionHandler(nil, NetworkError.params)
        }
        
        let task = session.dataTask(with: request) { data, _, error in
            DispatchQueue.main.async { UIApplication.shared.isNetworkActivityIndicatorVisible = false }
            completionHandler(data, NetworkError.other(error))
            if let data = data {
                putRequestCache[urlString] = data
            }
        }
        
        task.resume()
        session.finishTasksAndInvalidate()
    }
    
}
