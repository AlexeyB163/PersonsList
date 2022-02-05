//
//  TabBarControllerViewController.swift
//  PersonsList
//
//  Created by User on 02.02.2022.
//

import UIKit

class TabBarControllerViewController: UITabBarController {

    

    override func viewDidLoad() {
        super.viewDidLoad()
        loadDataUsersForVC()
    }
    
    private func loadDataUsersForVC() {
        let data = Person.getRandomDataUsers()
        let personVC = viewControllers?.first as! PersonsListViewController
        let detailsVC = viewControllers?.last as! DetailListTableViewController
        
        personVC.data = data
        detailsVC.data = data
    }
}
