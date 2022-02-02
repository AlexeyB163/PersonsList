//
//  TabBarControllerViewController.swift
//  PersonsList
//
//  Created by User on 02.02.2022.
//

import UIKit

class TabBarControllerViewController: UITabBarController {

    let data = Person.getRandomDataUser()

    override func viewDidLoad() {
        super.viewDidLoad()
        loadDataUsersForVC()
    }
    
    private func loadDataUsersForVC() {
        
        guard let viewControllers = viewControllers else { return }

        viewControllers.forEach {
            if let navigationVC = $0 as? UINavigationController {
                if let personVC = navigationVC.topViewController as? PersonsListViewController {
                    personVC.data = data
                }
                if let detailsVC = navigationVC.topViewController as? DetailListTableViewController {
                    detailsVC.data = data
                }
            }
        }
    }
    
    
}
