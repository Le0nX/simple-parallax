//
//  ListTableViewController.swift
//  simple_paralax
//
//  Created by Denis Nefedov on 11/01/2019.
//  Copyright © 2019 X. All rights reserved.
//

import UIKit

class ListTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // by protocol
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // number of cells
        return imageArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // получили нужную cell
        if let cell = tableView.dequeueReusableCell(withIdentifier: "Celly") as? PrallaxCell {
            cell.configeureCell(with: imageArray[indexPath.row], andDescription: nameArray[indexPath.row])
            return cell
        }
        return PrallaxCell()
    }
}
