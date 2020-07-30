//
//  main.swift
//  Project
//
//  Created by gt650 on 19.07.2020.
//  Copyright © 2020 gt650. All rights reserved.
//

import Foundation

protocol Car {
    var speed: Int { get }
    func drive()
}

extension Car {
    
    func openWindows(status: Bool) {
        if status == true {
            print("Окна открыты")
        } else {
            print("Окна закрыты")
        }
    }
    
    func startEngine(status: Bool) {
        if status == true {
            print("Двигатель запущен")
        } else {
            print("Двигатель выключен")
        }
    }
}

class SportCar: Car, CustomStringConvertible {
    var description: String {
        return "Спортивная машина"
    }
    var speed: Int {
        return 300
    }
    var isTurboEngine: Bool = true
    
    func drive() {
        print("Поехали")
    }
}

class TrunkCar: Car, CustomStringConvertible {
    var description: String {
        return "Грузовая машина"
    }
    var speed: Int {
        return 100
    }
    var isTrunk: Bool = true
    
    func drive() {
        print("Поехали")
    }
}

var porche = SportCar()
porche.drive()
porche.openWindows(status: true)
print(porche)

var man = TrunkCar()
man.startEngine(status: true)
man.drive()
print(man)
