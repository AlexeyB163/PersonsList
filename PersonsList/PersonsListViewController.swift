//
//  ViewController.swift
//  PersonsList
//
//  Created by User on 30.01.2022.
//

import UIKit

class PersonsListViewController: UITableViewController {
    
    var data:[Person] = []
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        data.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "user", for: indexPath)
        var content = cell.defaultContentConfiguration()
        content.text = data[indexPath.row].fullName

        cell.contentConfiguration = content
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let contactVC = segue.destination as? ContactUserViewController else { return }
        let indexPath = tableView.indexPathForSelectedRow?.row
        contactVC.indexPath = indexPath ?? 0
        contactVC.data = data
    }
}


