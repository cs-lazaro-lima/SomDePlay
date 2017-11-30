//
//  UIImageView+download.swift
//  SomDePlay
//
//  Created by Lázaro Lima dos Santos on 30/11/17.
//  Copyright © 2017 Lazaro Lima. All rights reserved.
//

import UIKit

extension UIImageView {
    
    func download(url: URL?, with placeholder: UIImage? = UIImage()) {
        guard let url = url else {
            self.image = placeholder
            return
        }
        
        let request = URLRequest(url: url)
        let task = URLSession.shared.dataTask(with: request) { (data, nil, error) in
            if error != nil {
                self.image = placeholder
            } else {
                if let image = UIImage(data: data!) {
                    DispatchQueue.main.async {
                       self.image = image
                    }
                    
                }
            }
        }
        task.resume()
    }
    
}

