//
//  ShotsViewController.swift
//  CustomScoreboard
//
//  Created by Tucker on 4/28/15.
//  Copyright (c) 2015 TuckerSamEmily. All rights reserved.
//

import UIKit

class ShotsViewController: UIViewController
{
    
    @IBOutlet weak var drinkLabel: UILabel!
    var drinkNumber = 0
    
    @IBOutlet weak var warningLabel: UILabel!
    
    @IBAction func drinkButton(sender: UIButton)
    {
        drinkNumber++
        println(drinkNumber)
        drinkLabel.text = "\(drinkNumber)"
        
        if drinkNumber.hashValue == 3
        {
            drinkLabel.backgroundColor = UIColor.yellowColor()
            
            var alert = UIAlertController(title: "Got a DD?", message: "Designate one now if you haven't already.", preferredStyle: UIAlertControllerStyle.Alert)
            var cancelAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.Cancel, handler: ({Action in
            
            }))
            
            alert.addAction(cancelAction)
            self.presentViewController(alert, animated: true, completion: nil)
            
        }
        if drinkNumber.hashValue == 5
        {
            drinkLabel.backgroundColor = UIColor.orangeColor()
            warningLabel.text = "Slow down there buddy."
        }
        if drinkNumber.hashValue == 7
        {
            drinkLabel.backgroundColor = UIColor.redColor()
            warningLabel.text = "Stop now."
        }
        if drinkNumber.hashValue == 9
        {
            drinkLabel.backgroundColor = UIColor.purpleColor()
            drinkLabel.textColor = UIColor.whiteColor()
            warningLabel.text = "STOP"
        }
        if drinkNumber.hashValue == 11
        {
            drinkLabel.backgroundColor = UIColor.blackColor()
            drinkLabel.textColor = UIColor.whiteColor()
            warningLabel.text = "You are going to black out and/or die."
        }
    }

    override func viewDidLoad()
    {
        super.viewDidLoad()
    }

}
