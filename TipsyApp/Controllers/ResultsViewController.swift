//
//  ResultsViewController.swift
//  TipsyApp
//
//  Created by Ahmed Gaber on 6/25/20.
//  Copyright © 2020 com.ahmedgaber. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var settinglabel: UILabel!

    var totalText: String?
    var settingText: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        totalLabel.text = totalText
        settinglabel.text = settingText

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    

}
