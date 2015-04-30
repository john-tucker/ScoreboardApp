//
//  SettingsViewController.swift
//  CustomScoreboard
//
//  Created by Tucker on 4/28/15.
//  Copyright (c) 2015 TuckerSamEmily. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController
{

    @IBAction func nightButton(sender: UIButton)
    {
        nightMode()
    }
    
    func nightMode()
    {
        var night = UIColor.blackColor()
        ViewController(view.backgroundColor = night)
        GreedSetupVC(view.backgroundColor = night)
        ShotsViewController(view.backgroundColor = night)
        GreedViewController(view.backgroundColor = night)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)
    {
        if (segue.identifier == "SettingsSegue")
        {
            var dvc = segue.destinationViewController as! ViewController
        }
    }
    
    func saveChanges()
    {
        
    }
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }


}
