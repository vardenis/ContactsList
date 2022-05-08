//
//  PersonsListViewController.swift
//  ContactsList
//
//  Created by Денис on 07.05.2022.
//

import UIKit

class PersonsListViewController: UITableViewController {
    
    private var persons = Person.getPersonsList()


    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        let person = persons[indexPath.row]
        var content = cell.defaultContentConfiguration()
   
        content.text = person.fullName
        cell.contentConfiguration = content
        return cell
    }
    


    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let informationPersonVC = segue.destination as? InformationAboutPersonViewController else {return}
        guard let indexPath = tableView.indexPathForSelectedRow else {return}
        
        let person = persons[indexPath.row]
        informationPersonVC.person = person
                
    }

}
