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
    
    var data:Person!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = data.fullName
        navigationController?.navigationBar.backgroundColor = .systemGray5
        
        phoneLabel.text = "Phone: \(data.phone)"
        eMailLabel.text = "Email: \(data.eMail)"
        
    }

}
