//
//  ListTableViewController.swift
//  accleremotron
//
//  Created by Viktor Yamchinov on 29.11.2019.
//  Copyright © 2019 Viktor Yamchinov. All rights reserved.
//

import UIKit

class ListTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imageArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ParalaxCell", for: indexPath) as? ParalaxCell else {
            return UITableViewCell()
        }
        cell.configureCell(withImage: imageArray[indexPath.row], andDecription: nameArray[indexPath.row])
        return cell
    }
}

