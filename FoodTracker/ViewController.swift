//
//  ViewController.swift
//  FoodTracker
//
//  Created by Dzmitry Misiuk on 10/14/16.
//  Copyright © 2016 JLife. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: Properties
    @IBOutlet weak var mealTextField: UITextField!
    @IBOutlet weak var mealTextLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    // MARK: Actions
    @IBAction func setDefaultLabelText(_ sender: UIButton) {
        mealTextLabel.text = "Default Label Text"
    }
    

}

