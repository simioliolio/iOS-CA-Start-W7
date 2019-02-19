//
//  UIImageView+Networking.swift
//  ThingsNearby
//
//  Created by Simon Haycock on 1/20/19.
//  Copyright © 2019 Expedia. All rights reserved.
//

import UIKit

extension UIImageView {
    func downloaded(from url: URL, contentMode mode: UIView.ContentMode = .scaleAspectFit, completion: @escaping ()->()) {  // for swift 4.2 syntax just use ===> mode: UIView.ContentMode
        contentMode = mode
        let dataTask = URLSession.shared.dataTask(with: url) { data, response, error in
            guard let httpURLResponse = response as? HTTPURLResponse, httpURLResponse.statusCode == 200 else {
                completion()
                return
            }
            guard let mimeType = response?.mimeType, mimeType.hasPrefix("image") else {
                completion()
                return
            }
            guard let data = data, error == nil else {
                completion()
                return
            }
            guard let image = UIImage(data: data) else {
                completion()
                return
            }
            DispatchQueue.main.async() {
                self.image = image
                completion()
            }
            }
        dataTask.resume()
    }
    
    func downloaded(from link: String, contentMode mode: UIView.ContentMode = .scaleAspectFit, completion: @escaping ()->()) {  // for swift 4.2 syntax just use ===> mode: UIView.ContentMode
        guard let url = URL(string: link) else { return }
        downloaded(from: url, contentMode: mode, completion: completion)
    }
}
