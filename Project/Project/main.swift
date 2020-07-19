//
//  main.swift
//  Project
//
//  Created by gt650 on 19.07.2020.
//  Copyright © 2020 gt650. All rights reserved.
//

import Foundation


var x1: Double = 0
var x2: Double = 0
var D: Double = 0
 
let a: Double = 2
let b: Double = -9
let c: Double = 4
 
D = b * b - 4 * a * c
 
if D > 0 {
    x1 = (-b + sqrt(D)) / (2 * a)
    x2 = (-b - sqrt(D)) / (2 * a)
    print("X1 = \(x1); X2 = \(x2)")
} else if D == 0 {
    x1 = (-b + sqrt(D)) / (2 * a)
    print("X1 = X2 = \(x1)")
} else {
    print("Невозможно")
}
