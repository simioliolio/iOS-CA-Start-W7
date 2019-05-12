//
//  MediaWiki.swift
//  ThingsNearby
//
//  Created by Simon Haycock on 11/6/18.
//  Copyright © 2018 Expedia. All rights reserved.
//

import Foundation
import CoreLocation

class MediaWiki {
    
    let session = URLSession(configuration: .default)
    
    func pagesNear(location: CLLocationCoordinate2D, completion: @escaping (GeoQuery?, Error?) -> ()) {
        
        var urlComponents = URLComponents()
        urlComponents.scheme = "https"
        urlComponents.host = "en.wikipedia.org"
        urlComponents.path = "/w/api.php"
        
        let action = URLQueryItem(name: "action", value: "query")
        let format = URLQueryItem(name: "format", value: "json")
        let prop = URLQueryItem(name: "prop", value: "coordinates|pageimages|info")
        let inprop = URLQueryItem(name: "inprop", value: "url")
        let generator = URLQueryItem(name: "generator", value: "geosearch")
        let ggscoord = URLQueryItem(name: "ggscoord", value: "\(location.latitude)|\(location.longitude)")
        let ggsradius = URLQueryItem(name: "ggsradius", value: "10000")
        let piprop = URLQueryItem(name: "piprop", value: "thumbnail|original")
        let indexpageids = URLQueryItem(name: "indexpageids", value: "1")
        let formatversion = URLQueryItem(name: "formatversion", value: "2")
        
        urlComponents.queryItems = [action, format, prop, inprop, generator, ggscoord, ggsradius, piprop, indexpageids, formatversion]
        
        guard let url = urlComponents.url else { fatalError(" could not make url") }
        
        let dataTask = session.dataTask(with: url) { data, response, error in
            
            guard error == nil else {
                completion(nil, error)
                return
            }
            
            guard let httpResponse = response as? HTTPURLResponse else { fatalError("not httpResponse") }
            
            guard httpResponse.statusCode == 200 else {
                print("not 200 response: \(httpResponse.statusCode)")
                completion(nil, MediaWikiError.statusNot200(actual: httpResponse.statusCode))
                return
            }
            
            guard let uwData = data else {
                completion(nil, MediaWikiError.noDataWhenNoError)
                return
            }
            
            do {
                let model = try JSONDecoder().decode(GeoQuery.self, from: uwData)
                completion(model, nil)
            } catch {
                completion(nil, MediaWikiError.errorDecodingJSON(error: error))
            }
        }
        
        dataTask.resume()
    }
}

enum MediaWikiError: Error {
    case statusNot200(actual: Int)
    case noDataWhenNoError
    case errorDecodingJSON(error: Error)
}
