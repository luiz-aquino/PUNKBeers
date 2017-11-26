//
//  REST.swift
//  PunkApi
//
//  Created by Luiz Aquino on 26/11/17.
//  Copyright © 2017 Luiz Aquino. All rights reserved.
//

import Foundation

class REST {
    static let basePath: String = "https://api.punkapi.com/v2/beers"
    
    static let configuration: URLSessionConfiguration = {
        let config = URLSessionConfiguration.default
        config.allowsCellularAccess = false
        
        config.httpAdditionalHeaders = ["Content-Type": "application/json"]
        
        config.timeoutIntervalForRequest = 45.0
        
        config.httpMaximumConnectionsPerHost = 5
        
        return config
    }()
    
    static let session = URLSession(configuration: configuration)
    
    static func loadBeverages(onComplete: @escaping ([Beverage]?) -> Void) {
        guard let url = URL(string: basePath) else {
            onComplete(nil)
            return
        }
        
        session.dataTask(with: url) { (data: Data?, response: URLResponse?, error: Error?) in
            if error != nil {
                onComplete(nil)
            } else {
                guard let response = response as? HTTPURLResponse else {
                    onComplete(nil)
                    return
                }
                
                if response.statusCode == 200 {
                    guard let data = data else {
                        onComplete(nil)
                        return
                    }
                    do {
                        let json = try JSONSerialization.jsonObject(with: data, options: JSONSerialization.ReadingOptions()) as! [[String: Any]]
                    
                        var beverages: [Beverage] = []
                        for item in json {
                            let id = item["id"] as! Int
                            let name = item["name"] as! String
                            let tagline = item["tagline"] as! String
                            let firstBrewed = item["first_brewed"] as! String
                            let description = item["description"] as! String
                            let imageUrl = item["image_url"] as! String
                            let abv = item["abv"] as! Double
                            let ibu = item["ibu"] as? Double
                            let beverage = Beverage(id: id, name: name, tagline: tagline, firstBrewed: firstBrewed, description: description, imageUrl: imageUrl, abv: abv, ibu: ibu ?? 0)
                            beverages.append(beverage)
                        }
                        onComplete(beverages)
                    } catch {
                        print(error.localizedDescription)
                    }
                    
                }
            }
        }.resume()        
    }
    
}
