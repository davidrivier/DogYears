//
//  ViewController.swift
//  Dog Years
//
//  Created by David on 14/09/2014.
//  Copyright (c) 2014 Southstep. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    
    @IBOutlet weak var humanYearsTexfield: UITextField!
    
    
    @IBOutlet weak var dogYearsLabel: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    @IBAction func convertHumanIntoYears(sender: UIButton) {
        
        
        let dogYears = humanYearsTexfield.text.toInt()!
        
        let constantHumanToDog = 7
        
        dogYearsLabel.hidden = false
        
        humanYearsTexfield.resignFirstResponder()
        
        dogYearsLabel.text = "\(dogYears * constantHumanToDog)" + " in human years"
        
        
        
        
    }
    
    


}

