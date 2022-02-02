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
        var userRepository = [Person(firstName: dataManager.firstName.randomElement()!,
                          lastName: dataManager.lastName.randomElement()!,
                          phone: dataManager.phone.randomElement()!,
                          eMail: dataManager.eMail.randomElement()!)]
        while userRepository.count < dataManager.firstName.count {
            let temp = Person(
                            firstName: dataManager.firstName.randomElement()!,
                              lastName: dataManager.lastName.randomElement()!,
                              phone: dataManager.phone.randomElement()!,
                              eMail: dataManager.eMail.randomElement()!)
            
            if !userRepository.contains(where: {
                $0.firstName == temp.firstName
            }) &&
                !userRepository.contains(where: {
                $0.lastName == temp.lastName
            }) &&
                !userRepository.contains(where: {
                    $0.phone == temp.phone
            }) &&
                !userRepository.contains(where: {
                    $0.eMail == temp.eMail
                }) {
                userRepository.append(temp)
            }
        }
        return userRepository
        }
}



