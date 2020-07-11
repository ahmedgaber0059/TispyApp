
//
//  ViewController.swift
//  TipsyApp
//
//  Created by Ahmed Gaber on 6/24/20.
//  Copyright © 2020 com.ahmedgaber. All rights reserved.
//

import UIKit

class CalculatorViewController : UIViewController {

    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var tenPctButtpn: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!
    
    var tip = 0.1
    var numberOfPeople = 2
    var finalResult = "0.0"

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       // billTextField.keyboardType = UIKeyboardType.decimalPad
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func tipChanged(_ sender: UIButton) {
        
            billTextField.endEditing(true)
       
            zeroPctButton.isSelected = false
            tenPctButtpn.isSelected = false
            twentyPctButton.isSelected = false
        
            sender.isSelected = true

        let doubleValue = (sender.currentTitle! as NSString).doubleValue
        tip = doubleValue /   100
        
    }
    
    @IBAction func stepperChanged(_ sender: UIStepper){
       splitNumberLabel.text = String (format: "%.0f", sender.value)
        numberOfPeople = Int(sender.value)
        print(sender.value)
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        
        let bill = billTextField.text!
        
        if bill != "" {
   
            let billTotal = Double(bill)!
            let result = billTotal * (1 + tip) / Double(numberOfPeople)
            finalResult = String(format: "%.2f", result)
        }
        performSegue(withIdentifier: "toGetResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toGetResult"{
            let destination = segue.destination as! ResultsViewController
            destination.totalText = String ( numberOfPeople)
            destination.settingText = finalResult
        }
    }
    
    
    
    
    
    
}
