//
//  HeartsViewController.swift
//  CustomScoreboard
//
//  Created by Tucker on 5/5/15.
//  Copyright (c) 2015 TuckerSamEmily. All rights reserved.
//

import UIKit

class HeartsViewController: UIViewController
{
    @IBOutlet weak var roundScore1: UITextField!
    @IBOutlet weak var roundScore2: UITextField!
    @IBOutlet weak var roundScore3: UITextField!
    @IBOutlet weak var roundScore4: UITextField!
    
    @IBOutlet weak var score1: UILabel!
    @IBOutlet weak var score2: UILabel!
    @IBOutlet weak var score3: UILabel!
    @IBOutlet weak var score4: UILabel!
    
    func beginSetup()
    {
        var alert = UIAlertController(title: "Setup", message: nil, preferredStyle: UIAlertControllerStyle.Alert)
        var okAction = UIAlertAction(title: "OK", style:UIAlertActionStyle.Cancel, handler: ({Action in}))
            
        alert.addAction(okAction)
        self.presentViewController(alert, animated: true, completion: nil)
        
        

    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

    }

}
