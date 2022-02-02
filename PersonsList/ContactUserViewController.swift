//
//  ContactUserViewController.swift
//  PersonsList
//
//  Created by User on 01.02.2022.
//

import UIKit

class ContactUserViewController: UIViewController {

    
    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var eMailLabel: UILabel!
    
    var data:[Person] = []
    var indexPath:Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = data[indexPath].fullName
        navigationController?.navigationBar.backgroundColor = .systemGray5
        
        phoneLabel.text = "Phone: \(data[indexPath].phone)"
        eMailLabel.text = "Email: \(data[indexPath].eMail)"
        
    }

}
