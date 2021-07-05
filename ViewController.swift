//
//  ViewController.swift
//  Prework
//
//  Created by Nhu Ngoc Hoang  on 7/3/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func calculateTip(_ sender: Any) {
//        Get the initial bill amount
        let bill = Double(billAmountTextField.text!) ?? 0
        
//        Calculate the tips
        let tipPercentage = [0.15, 0.18, 0.2]
        let tip = bill * tipPercentage[tipControl.selectedSegmentIndex]

//        Calculate the total cost
        let total = bill + tip
        
//        Update Tip Amount Label
        tipAmountLabel.text = String(format: "$%.2f", tip)
//        Update Total Amount
        totalLabel.text = String(format: "$%.2f", total)
    }
    

}

