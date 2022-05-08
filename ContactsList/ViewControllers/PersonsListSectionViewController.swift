//
//  PersonsListSectionViewController.swift
//  ContactsList
//
//  Created by Денис on 07.05.2022.
//

import UIKit

class PersonsListSectionViewController: UITableViewController {
    
    private var persons = Person.getPersonsList()
    

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        persons.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        persons[section].fullName
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        let person = persons[indexPath.section]
        var content = cell.defaultContentConfiguration()
        
        if indexPath.row == 0 {
            content.text = "Phone: \(person.phone)"
        }
        else {
            content.text = "Email: \(person.mail)"
        }
        
        cell.contentConfiguration = content
        return cell
    }

}
