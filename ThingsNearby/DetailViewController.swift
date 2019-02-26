//
//  DetailViewController.swift
//  ThingsNearby
//
//  Created by Simon Haycock on 2/12/19.
//  Copyright © 2019 Expedia. All rights reserved.
//

import UIKit
import SafariServices

class DetailViewController: UIViewController {
    
    var page: Page?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
//        print("view did load, with page id \(String(describing: page?.pageid))")

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
