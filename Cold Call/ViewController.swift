//
//  ViewController.swift
//  Cold Call
//
//  Created by Nishant Patel on 3/7/17.
//  Copyright © 2017 Nishant Patel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let names = ["Nishant", "Arpit", "Parth", "Anu", "Marcus", "Eli"]
    

    @IBOutlet weak var topLabel: UILabel!
    @IBOutlet weak var numberDisplay: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        topLabel.text = "Ready?"
        numberDisplay.isHidden = true
        
    }
        
    @IBAction func coldCallButton(_ sender: UIButton) {
        
        let namesIndex = Int(arc4random_uniform(5) + 1)
        print(namesIndex)
        topLabel.text = names[namesIndex]
        numberDisplay.text = String(namesIndex)
        numberDisplay.isHidden = false
        if namesIndex == 1 || namesIndex == 2 {
            numberDisplay.textColor = UIColor.red
        } else if namesIndex == 3 || namesIndex == 4 {
            numberDisplay.textColor = UIColor.orange
        }  else if namesIndex == 5 {
            numberDisplay.textColor = UIColor.green
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
