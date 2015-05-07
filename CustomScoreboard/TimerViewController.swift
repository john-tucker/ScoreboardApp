//
//  TimerViewController.swift
//  CustomScoreboard
//
//  Created by Tucker on 5/5/15.
//  Copyright (c) 2015 TuckerSamEmily. All rights reserved.
//

import UIKit

class TimerViewController: UIViewController
{
    @IBOutlet weak var minuteText: UILabel!
    @IBOutlet weak var secondText: UILabel!
    
    @IBOutlet weak var minField: UITextField!
    @IBOutlet weak var secField: UITextField!
    
    @IBAction func timerEditButton(sender: AnyObject)
    {
        if minField.text != nil
        {
            minuteText.text = minField.text
        }
    }
    
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

    }

}
