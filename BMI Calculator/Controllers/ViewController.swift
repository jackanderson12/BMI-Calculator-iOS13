//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func sliderChanged(_ sender: UISlider) {
        var roundedNum: Float = 0
        if sender == heightSlider {
            roundedNum = Float(round((100 * heightSlider.value) / 100))
            print(roundedNum)
        }
        if sender == weightSlider {
            roundedNum =
            Float(round((100 * weightSlider.value) / 100))
            print(roundedNum)
        }
    }
    
}

