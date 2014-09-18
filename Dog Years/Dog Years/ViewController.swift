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
    
    
    
    @IBAction func convertIntoRealDogYears(sender: UIButton) {
        
        let realDogYears = Double(( humanYearsTexfield.text as NSString).doubleValue)
        dogYearsLabel.hidden = false
        humanYearsTexfield.resignFirstResponder()
        
        if realDogYears <= 2 {
            let constantHumanToDog = 10.5
            dogYearsLabel.text = "\(realDogYears * constantHumanToDog)" + " in real human years"
            
        }
        
        else  {
            let dogYearMore2 = (10.5 * 2) + (realDogYears - 2) * 4
     
            dogYearsLabel.text = "\(dogYearMore2)" + " in real human years"
        }
        
        }
        
        
        
        
        
    }
    
    
    




