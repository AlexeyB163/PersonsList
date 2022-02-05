//
//  Person.swift
//  PersonsList
//
//  Created by User on 30.01.2022.
//


struct Person {
    let firstName: String
    let lastName: String
    let phone: String
    let eMail: String
    
    var fullName:String {
        "\(firstName) \(lastName)"
    }
    
}

extension Person {
    static func getRandomDataUsers () -> [Person] {
        
        var persons:[Person] = []
        
        let firstNames = DataManager.dataManager.firstName.shuffled()
        let lastNames = DataManager.dataManager.lastName.shuffled()
        let phone = DataManager.dataManager.phone.shuffled()
        let email = DataManager.dataManager.eMail.shuffled()
        
        let iterationCount = min(firstNames.count,lastNames.count, phone.count, email.count)
        
        for index in 1...iterationCount {
            let person = (
            Person(
                firstName: firstNames[index],
                lastName: lastNames[index],
                phone: phone[index],
                eMail: email[index])
            )
            persons.append(person)
        }
        return persons
    }
        
}




