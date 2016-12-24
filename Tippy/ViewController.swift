//
//  ViewController.swift
//  Tippy
//
//  Created by Merna Aziz on 12/15/16.
//  Copyright © 2016 Merna Aziz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var BillField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func CalculateTip(_ sender: AnyObject) {
        //if whatever is on the left is nill then return 0
        
        let tipPerecent = [0.18, 0.2, 0.25]
        
        let bill = Double(BillField.text!) ?? 0
        let tip = bill * tipPerecent[tipControl.selectedSegmentIndex]
        
        let total = bill + tip
        
        tipLabel.text = String(format: "$%.2f", tip)
        //tipLabel.text = "$\(tip)"
        totalLabel.text = String(format: "$%.2f", total)
    
    }
    
}

