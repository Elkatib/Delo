//
//  main.swift
//  Project
//
//  Created by gt650 on 19.07.2020.
//  Copyright © 2020 gt650. All rights reserved.
//

import Foundation

enum sportCarBrand{
    case Lamborghini, Ferrari, Porsche
}
enum trunkCarBrand{
    case Man, Kamaz, Belaz
}

struct SportCar{
    var brand:sportCarBrand
    var year:Int
    var trunkVolume:Double
    var engineStart:Bool
    var openWindows:Bool
    var fillVolume:Double
    
    mutating func changeBrand(brand:sportCarBrand){
        if brand == .Lamborghini{
            self.brand = .Lamborghini
            self.year = 2014
            self.trunkVolume = 2.0
            self.engineStart = false
            self.openWindows = false
            self.fillVolume = 0.0
        } else if brand == .Ferrari{
            self.brand = .Ferrari
            self.year = 2018
            self.trunkVolume = 2.5
            self.engineStart = true
            self.openWindows = false
            self.fillVolume = 0.0
        } else if brand == .Porsche {
            self.brand = .Porsche
            self.year = 2002
            self.trunkVolume = 3.1
            self.engineStart = true
            self.openWindows = true
            self.fillVolume = 0.0
        }
            
    }
    mutating func changeEngineStart(status:Bool){
        self.engineStart = status
    }
    mutating func changeOpenWindows(status:Bool){
        self.openWindows = status
    }
    mutating func changeFillVolume(lt:Double){
        if lt < trunkVolume {
            self.fillVolume = lt
        } else {
            print("Нельзя установить заполненность багажника больше его максимального объема")
        }
    }
}

struct TrunkCar{
    var brand:trunkCarBrand
    var year:Int
    var trunkVolume:Double
    var engineStart:Bool
    var openWindows:Bool
    var fillVolume:Double
    
    mutating func changeBrand(brand:trunkCarBrand){
        if brand == .Man{
            self.brand = .Man
            self.year = 2011
            self.trunkVolume = 2.7
            self.engineStart = true
            self.openWindows = false
            self.fillVolume = 0.0
        } else if brand == .Kamaz{
            self.brand = .Kamaz
            self.year = 2019
            self.trunkVolume = 2.6
            self.engineStart = true
            self.openWindows = false
            self.fillVolume = 0.0
        } else if brand == .Belaz {
            self.brand = .Belaz
            self.year = 2010
            self.trunkVolume = 3.8
            self.engineStart = true
            self.openWindows = false
            self.fillVolume = 0.0
        }
            
    }
    mutating func changeEngineStart(status:Bool){
        self.engineStart = status
    }
    mutating func changeOpenWindows(status:Bool){
        self.openWindows = status
    }
    mutating func changeFillVolume(lt:Double){
        if lt < trunkVolume {
            self.fillVolume = lt
        } else {
            print("Нельзя установить заполненность багажника больше его максимального объема")
        }
    }
}

var myCar = SportCar(brand: .Lamborghini, year: 2014, trunkVolume: 2.0, engineStart: false, openWindows: false, fillVolume: 1.1) // Создаем (иницализируем) myCar

myCar.changeFillVolume(lt: 1.4) //Меняем заполненность багажника
myCar.changeEngineStart(status: true)// Заводим движок
print(myCar)
myCar.changeBrand(brand: .Porsche) // Меняем бренд на Порш, меняются при этом другие свойства по умолчанию

var myTrunckCar = TrunkCar(brand: .Kamaz, year: 2017, trunkVolume: 2.5, engineStart: false, openWindows: false, fillVolume: 1.5) // Создаем (иницализируем) myTrunkCar
myTrunckCar.changeBrand(brand: .Belaz)//Меняем бренд на Белаз и устанавливаем значения по умолчанию для Белаза
myTrunckCar.changeOpenWindows(status: true)//Открываем окна
print(myTrunckCar)
