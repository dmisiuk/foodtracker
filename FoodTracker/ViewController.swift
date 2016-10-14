//
//  ViewController.swift
//  FoodTracker
//
//  Created by Dzmitry Misiuk on 10/14/16.
//  Copyright © 2016 JLife. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    // MARK: Properties
    @IBOutlet weak var mealTextField: UITextField!
    @IBOutlet weak var mealTextLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        mealTextField.delegate = self
    }
    
    // MARK: Actions
    @IBAction func setDefaultLabelText(_ sender: UIButton) {
        mealTextLabel.text = "Default Label Text"
    }
    
    // MARK: UITextFieldDelegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        mealTextLabel.text = textField.text
        mealTextField.text = ""
    }

}

