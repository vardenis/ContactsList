//
//  Person.swift
//  ContactsList
//
//  Created by Денис on 02.05.2022.
//

import Foundation

struct Person {
    let surname: String
    let name: String
    let patronymic: String
    let phone: String
    let mail: String
    
    var fullName: String {
        "\(surname) \(name) \(patronymic)".trimmingCharacters(in: .whitespaces)
    }
    
}

extension Person {
    static func getPersonsList() -> [Person] {
        
        var persons: [Person] = []
        let dataManager = DataManager ()
        
        let surnames = dataManager.surnames.shuffled()
        let names = dataManager.names.shuffled()
        let patronymics = dataManager.patronymics.shuffled()
        let phones = dataManager.phones.shuffled()
        let mails = dataManager.mails.shuffled()

        let countElement = surnames.count
        
        for element in 0..<countElement {
            let person = Person(surname: surnames[element],
                                name: names.returnElement(index: element),
                                patronymic: patronymics.returnElement(index: element),
                                phone: phones.returnElement(index: element),
                                mail: mails.returnElement(index: element))
            
            persons.append(person)
        }
        
        return persons
    }
    
}

extension Collection {
    func returnElement(index: Index) -> Element {
        indices.contains(index) ? self[index] : "" as! Self.Element
    }
}
