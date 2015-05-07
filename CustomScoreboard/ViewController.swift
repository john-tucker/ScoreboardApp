//
//  ViewController.swift
//  CustomScoreboard
//
//  Created by Tucker on 4/21/15.
//  Copyright (c) 2015 TuckerSamEmily. All rights reserved.
//

import UIKit


class ViewController: UIViewController
{
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)
    {
        if (segue.identifier == "HeartsSegue")
        {
            var dvc = segue.destinationViewController as! HeartsViewController
            dvc.beginSetup()
        }
    }

 
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }


}

