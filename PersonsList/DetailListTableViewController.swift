//
//  DetailListTableViewController.swift
//  PersonsList
//
//  Created by User on 01.02.2022.
//

import UIKit

class DetailListTableViewController: UITableViewController {
    
    var data:[Person] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return data.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        tableView.separatorStyle = .singleLine
        return 2
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header = UIView(frame: CGRect(
            x: 0,
            y: 0,
            width: view.frame.size.width,
            height: 30))
        header.backgroundColor = .systemGray5
        
        let label = UILabel(frame: CGRect(
            x: 10,
            y: 0,
            width: header.frame.size.width,
            height: header.frame.size.height)
        )
        label.font = .boldSystemFont(ofSize: 17)
        label.text = data[section].fullName
        
        header.addSubview(label)
        return header
    }
    
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell = UITableViewCell()
        if indexPath.row == 0 {
            cell = tableView.dequeueReusableCell(withIdentifier: "phone", for: indexPath)
            var content = cell.defaultContentConfiguration()
            content.image = UIImage(systemName: "phone")
            content.text = data[indexPath.section].phone
            cell.contentConfiguration = content
            
        } else {
            cell = tableView.dequeueReusableCell(withIdentifier: "email", for: indexPath)
            var content = cell.defaultContentConfiguration()
            content.image = UIImage(systemName: "mail")
            content.text = data[indexPath.section].eMail
            cell.contentConfiguration = content
        }
        return cell
    }
}
