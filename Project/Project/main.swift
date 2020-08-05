//
//  main.swift
//  Project
//
//  Created by gt650 on 19.07.2020.
//  Copyright © 2020 gt650. All rights reserved.
//

import Foundation

class Cube {
    var side: Int
    
    init(side: Int) {
        self.side = side
    }
    
    func calc() -> Int {
        return side * side
    }
}

struct Stack {
    private var elements: [Cube] = []
    
    mutating func push(newElement: Cube) {
        elements.append(newElement)
    }
    
    mutating func pop() {
        elements.removeLast()
    }
}

func onlyPlusThree(resultCubeCalculate: Int) -> Int {
    return resultCubeCalculate + 3
}

var linkOnlyPlusThree = onlyPlusThree

func smartCalc<T: Cube> (a: T) -> Int {
    var stack = Stack()
    stack.push(newElement: a)
    let resCalc = a.calc()
    let myZam = linkOnlyPlusThree(resCalc)
    return myZam
}

print(smartCalc(a: Cube(side: 5)))
