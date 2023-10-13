//
//  Calculator.swift
//  CICDDemo
//
//  Created by Anup D'Souza on 12/10/23.
//

import Foundation

enum Operation {
    case add
    case subtract
    case divide
    case multiply
}

struct Calculator {
    func performOperation(_ val1: String, _ val2: String, operation: Operation) -> Double {
        guard let num1 = Double(val1), let num2 = Double(val2) else {
            return 0
        }
        
        switch operation {
        case .add:
            return num1 + num2
        case .subtract:
            return num1 - num2
        case .divide:
            return num1 / num2
        case .multiply:
            return num1 * num2
        }
    }
}
