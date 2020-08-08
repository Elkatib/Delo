//
//  main.swift
//  Project
//
//  Created by gt650 on 19.07.2020.
//  Copyright © 2020 gt650. All rights reserved.
//

import Foundation
enum CarError: LocalizedError {
    case brandNotFound
    case none
    
    var errorDescription: String? {
        switch self {
        case .brandNotFound: return "В списке брендов нет такого индекса"
        default: return "Другие ошибки"
        }
    }
}

enum AnimalError: LocalizedError {
    case animalNotFound
    case none
    
    var errorDescription: String? {
        switch self {
        case .animalNotFound: return "Нет такого животного с указанным индексом списка"
        default: return "Другие ошибки"
        }
    }
}

class Car {
    var brands: [String] = ["Mers", "BMW", "Lada"]
    
    public func whatBrand(index: Int) -> (carbrand: String?, error: CarError) {
        
        if index <= brands.count {
            return (brands[index], .none)
        }
        return (nil, .brandNotFound)
    }
}

class Animals {
    var animals: [String] = ["Tiger", "Cat", "Dog"]
    
    public func compareAnimals (index: Int) throws -> String {
        if index <= animals.count {
            return (animals[index])
        }
        throw AnimalError.animalNotFound
    }
}

let myCar = Car()
let chooseBrand = myCar.whatBrand(index: 4)
if chooseBrand.error != .none {
    print(chooseBrand.error.localizedDescription)
} else {
    print (print(chooseBrand.carbrand!))
}

let myAnimal = Animals()

do {
    let chooseAnimal = try myAnimal.compareAnimals(index: 4)
    print(chooseAnimal)
} catch let error {
    print(error.localizedDescription)
}

