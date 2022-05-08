//
//  InformationAboutPersonViewController.swift
//  ContactsList
//
//  Created by Денис on 08.05.2022.
//

import UIKit

class InformationAboutPersonViewController: UIViewController {
    
    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = person.fullName
        phoneLabel.text = "Phone: \(person.phone)"
        emailLabel.text = "Email: \(person.mail)"
    }

}
