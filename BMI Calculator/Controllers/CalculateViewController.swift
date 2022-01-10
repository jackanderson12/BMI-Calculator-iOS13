//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    @IBOutlet weak var bmiCalculated: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func sliderChanged(_ sender: UISlider) {
        if sender == heightSlider {
            let height = String(format: "%.2f" ,sender.value)
            heightLabel.text = "\(height)m"
        }
        if sender == weightSlider {
            let weight = String(format: "%.0f", sender.value)
            weightLabel.text = "\(weight)Kg"
        }
    }
    @IBAction func calculateBMI(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        let bmi = weight / pow(height, 2)
        bmiCalculated.text = String(format: "%.1f", bmi)
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = bmiCalculated.text
            bmiCalculated.text = "CALCULATE YOUR BMI"
        }
    }
}

