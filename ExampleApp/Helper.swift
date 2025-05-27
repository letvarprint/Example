//
//  Helper.swift
//  ExampleApp
//
//  Created by Alexandru Brixencov on 23.05.2025.
//

 import Foundation

class Helper {
    private var numbers: [Int] = [] // 1
    
    func addNumber(_ number: Int) { // 2
        numbers.append(number)
    }
    
    func getNumbers() -> [Int] { //3
        numbers
    }
    
}
