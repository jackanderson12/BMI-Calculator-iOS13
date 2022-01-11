//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Jack Anderson on 1/10/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

struct CalculatorBrain {

    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float){
        let bmiValue = weight / (height * height)
        if bmiValue < 18.5{
            bmi = BMI(value: bmiValue, advice: "Eat more pies.", color: .blue)
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Eat the same shit", color: .green)
        } else{
            bmi = BMI(value: bmiValue, advice: "Eat Veggies Fatty", color: .red)
        }
    }
    func getBMIValue() -> String{
        let bmiTo1Decimal =  String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1Decimal
    }
    func getAdvice() -> String {
        return bmi?.advice ?? "none"
    }
    func getColor() -> UIColor {
        return bmi?.color ?? .gray
    }
}
