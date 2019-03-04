//
//  DetailViewController.swift
//  ThingsNearby
//
//  Created by Simon Haycock on 2/12/19.
//  Copyright © 2019 Expedia. All rights reserved.
//

import UIKit
import SafariServices
import MapKit

class DetailViewController: UIViewController {
    
    var page: Page?
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

//        print("view did load, with page id \(String(describing: page?.pageid))")
        
        guard let page = self.page else { fatalError("no page set on detail view controller") }
        
        titleLabel.text = page.title
        
        if let imageURL = page.original?.source {
            imageView.downloaded(from: imageURL) {
                self.imageView.backgroundColor = .clear
            }
        }

    }
    
    @IBAction func openArticle(_ sender: Any) {
        
        // Show web view with image for now
        
        guard let imageURL = page?.original?.source else { return }
        
        let url = URL(string: imageURL)!
        
        let webViewController = SFSafariViewController(url: url)
        present(webViewController, animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
