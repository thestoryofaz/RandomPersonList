//
//  InfoViewController.swift
//  RandomPersonList
//
//  Created by aiv on 04.06.2022.
//

import UIKit

class InfoViewController: UIViewController {

    @IBOutlet var name: UILabel!
    @IBOutlet var email: UILabel!
    @IBOutlet var phoneNumber: UILabel!
    
    var firstLastName: String!
    var emails: String!
    var phone: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        name.text = firstLastName
        email.text = emails
        phoneNumber.text = phone
    }
}
