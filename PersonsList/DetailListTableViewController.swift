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
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "userData", for: indexPath)
        
        let person = data[indexPath.section]
        var content = cell.defaultContentConfiguration()
        
        
        switch indexPath.row {
        case 0:
            content.image = UIImage(systemName: Person.Contacts.phone.rawValue)
            content.text = person.phone
        default:
            content.image = UIImage(systemName: Person.Contacts.email.rawValue)
            content.text = person.eMail
        }
        
        cell.contentConfiguration = content
         
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
