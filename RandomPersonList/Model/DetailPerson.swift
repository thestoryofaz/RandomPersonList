//
//  FullNameData.swift
//  RandomPersonList
//
//  Created by aiv on 04.06.2022.
//

struct DetailPerson {
    
    static let sharedInstance = DetailPerson()
    
    var persons: [Person]
    
    var firstName = ["Sheldon", "Leonard", "Howard", "Rajesh"]
    var lastName = ["Cooper", "Hofstander", "Wolowitz", "Koothrappali"]
    var emails = ["abc@email.com", "def@email.com", "ghk@email.com", "lmn@email.com"]
    var phoneNumber = ["89991234567", "89997654321", "89994561237", "89996543217"]
    
    init() {
        persons = [Person]()
        firstName.shuffle()
        lastName.shuffle()
        emails.shuffle()
        phoneNumber.shuffle()
        
        for ((name, surName), (el, phoneNumber)) in zip(zip(firstName, lastName), zip(emails, phoneNumber)) {
            
            let person = Person(firstName: name, lastName: surName, emails: el, phoneNumber: phoneNumber)
            
            self.persons.append(person)
        }
    }

}

