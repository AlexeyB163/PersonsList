//
//  DetailListTableViewController.swift
//  PersonsList
//
//  Created by User on 01.02.2022.
//

import UIKit

class DetailListTableViewController: UITableViewController {
    
    var data:[Person] = []


    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        tableView.backgroundColor = .systemGray5
        
         return data.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        tableView.separatorStyle = .singleLine
        
        return 2
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        data[section].fullName
    }
    
    
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell = tableView.dequeueReusableCell(withIdentifier: "userData", for: indexPath)
        var content = cell.defaultContentConfiguration()
        
        if indexPath.row == 0 {
            content.image = UIImage(systemName: "phone")
            content.text = data[indexPath.section].phone
        } else if indexPath.row == 1 {
            content.image = UIImage(systemName: "mail")
            content.text = data[indexPath.section].eMail
        }
        
        cell.contentConfiguration = content
        return cell
    }
}
