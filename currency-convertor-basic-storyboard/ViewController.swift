//
//  ViewController.swift
//  currency-convertor-basic-storyboard
//
//  Created by Utkarsh  Mehta on 16/10/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var rateTextField: UITextField!
    @IBOutlet weak var amountTextField: UITextField!
    @IBOutlet weak var currencySegment: UISegmentedControl!
    @IBOutlet weak var convertedLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func convertTapped(_ sender: Any) {
        let rate = Double(rateTextField.text!)!
        let amount = Double(amountTextField.text!)!
        let converted = amount * rate
        if currencySegment.selectedSegmentIndex == 0 {
            convertedLabel.text = "₹ \(String(converted))"
        }else{
            convertedLabel.text = "$\(String(converted))"
        }
        
        
    }
    
}


