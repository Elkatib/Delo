//
//  main.swift
//  Project
//
//  Created by gt650 on 19.07.2020.
//  Copyright © 2020 gt650. All rights reserved.
//

import Foundation


var side1:Double = 6
var side2:Double = 8
let gypo:Double = side1*side2 + side2*side2
let s:Double = (side1*side2)/2
let p:Double = (side1 + side2 + gypo)
print("Гипотенуза: \(gypo)")
print("Площадь треугольника: \(s)")
print("Периметр треугольника: \(p)")
