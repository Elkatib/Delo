//
//  main.swift
//  Project
//
//  Created by gt650 on 19.07.2020.
//  Copyright © 2020 gt650. All rights reserved.
//

import Foundation

var numbers: [Int] = fillArray()
var numbersWhithout: [Int] = deleteSomeNumbers(numbers: numbers)

func even(number:Int) -> Bool { // Четное число или нет
    let funcAnswer:Bool = number % 2 == 0 ? true : false
    return funcAnswer
}

func evenForThree(number:Int) -> Bool { //Делится на три без остатка или нет
    let funcAnswer:Bool = number % 3 == 0 ? true : false
    return funcAnswer
}

func fillArray() -> [Int] { //Наполняем массив числами через цикл
    var temporaryNnumbers: [Int] = [] //Вводим промежуточный массив, так как параметр по ходу в Сфивте это константа
    for i in 1...100{
        temporaryNnumbers.append(i)
    }
    return temporaryNnumbers
}

func deleteSomeNumbers(numbers:[Int]) -> [Int]{
    var temporaryNumbers: [Int] = numbers
    var i = 0
    while i < temporaryNumbers.count {
        if even(number: temporaryNumbers[i]) == true || evenForThree(number: temporaryNumbers[i]) == false{
            temporaryNumbers.remove(at: i)
            //Не производим итерацию, так как массив уменьшился и под элементом i в массиве лежит уже следующая цифра
        } else {
            i += 1
        }
    }
    return temporaryNumbers
}

