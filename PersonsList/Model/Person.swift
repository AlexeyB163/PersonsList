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
        firstName + " " + lastName
    }
    
    static func getRandomDataUser () -> [Person] {
        let dataManager = DataManager()
        var dataUser:[Person] = []
        for _ in 1...dataManager.firstName.count {
            dataUser.append(
                Person(firstName: dataManager.firstName.randomElement()!,
                       lastName: dataManager.lastName.randomElement()!,
                       phone: dataManager.phone.randomElement()!,
                       eMail: dataManager.eMail.randomElement()!)
            )
        }
        return dataUser
    }
    
}



