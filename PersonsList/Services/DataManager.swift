//
//  DataManager.swift
//  PersonsList
//
//  Created by User on 30.01.2022.
//


class DataManager {
    
    static let dataManager = DataManager()
    
    let firstName = ["Мария", "Евгения", "Екатерина", "Татьяна", "Виктория",
                     "Ольга", "Надежда", "Марина", "Галина", "Анастасия" ]
    
    let lastName = ["Иванова", "Петрова", "Сидорова", "Кузнецова", "Нехороших",
                    "Антонова", "Швецова", "Миронова", "Карпова", "Захарова" ]
    
    let phone =  ["89271111111", "89272222222", "89273333333", "89274444444",
                  "89275555555", "89276666666", "89277777777", "89278888888",
                  "89279999999", "89270000000"]
    
    let eMail = ["a@mail.ru", "b@mail.ru", "c@mail.ru", "e@mail.ru", "f@mail.ru",
                 "g@mail.ru", "h@mail.ru", "i@mail.ru", "j@mail.ru", "k@mail.ru"]
    
    private init() {}
}
