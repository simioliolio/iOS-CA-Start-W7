//
//  ThingsViewController.swift
//  ThingsNearby
//
//  Created by Simon Haycock on 2/19/19.
//  Copyright © 2019 Expedia. All rights reserved.
//

import UIKit

class ThingsViewController: UITableViewController {
    
    var pages: Pages?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Mock pages data for now
        
        guard let jsonInput = PagesResponse.json.data(using: .utf8) else {
            return
        }
        
        guard let pagesFromJSON = try? JSONDecoder().decode(Pages.self, from: jsonInput) else {
            return
        }
        
        pages = pagesFromJSON
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        guard let numberOfPages = pages?.pages.count else {
            return 0
        }
        
        return numberOfPages
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "SubtitleCell", for: indexPath)
        // Configure the cell...
        
        guard let pages = self.pages else {
            return cell
        }
        
        let page = pages.pages[indexPath.row]
        
        cell.textLabel?.text = page.title
        
        if let detailText = page.terms?.description?.first {
            cell.detailTextLabel?.text = detailText
        }
        
        if let thumbnail = page.thumbnail?.source {
            cell.imageView?.downloaded(from: thumbnail, contentMode: .scaleAspectFit, completion: {
                cell.setNeedsLayout()
            })
        }
        
        return cell
    }
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        
        guard let source = segue.source as? ThingsViewController else {
            return
        }
        
        guard let destination = segue.destination as? DetailViewController else {
            return
        }
        
        guard let indexPath = source.tableView.indexPathForSelectedRow else {
            return
        }
        
        let page = source.pages!.pages[indexPath.row]
        destination.page = page
    }

}
