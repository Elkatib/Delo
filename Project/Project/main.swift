//
//  main.swift
//  Project
//
//  Created by gt650 on 19.07.2020.
//  Copyright © 2020 gt650. All rights reserved.
//

import Foundation

class Car{
    
    enum CarType: String{
        case fast = "Быстрая", slow = "Медленная", verySlow = "Очень медленная", veryFast = "Очень быстрая"
    }

    var speedGlobal: Double
    var engineVolume: Double
    var type: CarType
    
    init(speed: Double, engineVolume: Double){
        self.speedGlobal = speed
        self.engineVolume = engineVolume
        self.type = .fast // по умолчанию
        checkCarType(speed: speedGlobal) // Автоматическая установка КарТайп, если содали прямой объект Кар (не через наследника)
    }
    
    func checkCarType(speed: Double) {
        if speed > 200 {
            type = .fast
        } else {
            type = .slow
        }
    }
}

class SportCar: Car{
    var turboEngine: Bool
    init(speed: Double, engineVolume: Double, turbo: Bool){
        self.turboEngine = turbo
        super.init(speed: speed, engineVolume: engineVolume)
    }
    
    override func checkCarType(speed: Double) {
        if turboEngine == true { // Если есть турбина, то увеличиваем скорость на 100
            speedGlobal += 100
        }
        if speedGlobal > 300 {
            type = .veryFast
        } else if speedGlobal > 200 && speedGlobal < 300 {
            type = .fast
        } else if speedGlobal > 100 && speedGlobal < 200 {
            type = .slow
        } else if speedGlobal < 100 {
            type = .verySlow
        }
    }
    func changeTurbo(speed: Double, turbo: Bool){
        self.turboEngine = turbo
        self.speedGlobal = speed
        checkCarType(speed: speed)
    }
}

class TrunkCar: Car{
    var trailer: Bool
    init(speed: Double, engineVolume: Double, trailer: Bool){
        self.trailer = trailer
        super.init(speed: speed, engineVolume: engineVolume)
    }
    
    override func checkCarType(speed: Double) {
        if trailer == true { // Если есть прицеп, то уменьшаем скорость на 50
            speedGlobal -= 50
        }
        if speedGlobal > 300 {
            type = .veryFast
        } else if speedGlobal > 200 && speedGlobal < 300 {
            type = .fast
        } else if speedGlobal > 100 && speedGlobal < 200 {
            type = .slow
        } else if speedGlobal < 100 {
            type = .verySlow
        }
    }
    func changeTrailer(speed: Double, trailer: Bool){
        self.trailer = trailer
        self.speedGlobal = speed
        checkCarType(speed: speed)
    }
}

let lambo = SportCar(speed: 267, engineVolume: 2.9, turbo: true) //Добавили турбину, скорость увеличилась на 100, в результате чего тип машины стал Очень быстрая
print(lambo.type.rawValue)

lambo.changeTurbo(speed: 267, turbo: false) // Изменим данные - оставим скорость Ламбо такую же, но уберем турбину - отнимется -100 со скорости и машина возымеет тип просто Быстрая
print(lambo.type.rawValue)

let kamaz = TrunkCar(speed: 100, engineVolume: 4.9, trailer: false) // Аналогия с прицепом, которая уменьшает скорость
print(kamaz.type.rawValue)

kamaz.changeTrailer(speed: 130, trailer: true)
print(kamaz.type.rawValue)
