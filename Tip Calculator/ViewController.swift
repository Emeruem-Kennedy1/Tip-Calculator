//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Kennedy Emeruem on 8/18/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTextFeild: UITextField!
    
    @IBOutlet weak var tipAmountLabel: UILabel!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var slider: UISlider!
    
    @IBOutlet weak var tipPercentage: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateTip(_ sender: Any) {
        
        let bill = Double(billAmountTextFeild.text!) ?? 0
        
        let tipPercentages = [0.15,0.18, 0.2]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        
        tipAmountLabel.text = String(format: "$%.2f", tip)
        
        totalLabel.text = String(format: "$%.2f", total)
    }
    
    @IBAction func sliderChanged(_ sender: Any) {
        tipPercentage.text = String(format: "%.0f%%", slider.value*100)
        
        let tipPercent = Double(slider.value)
        let bill = Double(billAmountTextFeild.text!) ?? 0
        let tip = bill * tipPercent
        
        let total = bill + tip
        
        tipAmountLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
    
    
    
    
    
}

