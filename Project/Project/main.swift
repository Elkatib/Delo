//
//  main.swift
//  Project
//
//  Created by gt650 on 19.07.2020.
//  Copyright © 2020 gt650. All rights reserved.
//

import Foundation


var sum:Double = 1000
var perc:Double = 5.7
var i = 1

while i < 6 {
    i += 1
    sum = sum + (sum * perc) / 100
}

print("Через пять лет сумма вклада составит:  \(round(sum))")
