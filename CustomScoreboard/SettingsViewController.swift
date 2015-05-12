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

    var nightModeOn : Bool = false
    @IBOutlet weak var nightModeLabel: UILabel!
    
    @IBAction func nightButton(sender: UIButton)
    {
        nightModeOn = !nightModeOn
        nightMode()
    }
    
    func nightMode()
    {
        var nightBackGround = UIColor.darkGrayColor()
        var nightText = UIColor.lightTextColor()
        var dayBackGround = UIColor.whiteColor()
        var dayText = UIColor.darkTextColor()
        if nightModeOn == true
        {
            ViewController(view.backgroundColor = nightBackGround)
            GreedSetupVC(view.backgroundColor = nightBackGround)
            ShotsViewController(view.backgroundColor = nightBackGround)
            GreedViewController(view.backgroundColor = nightBackGround)
            nightModeLabel.textColor = nightText
        }
        else
        {
            ViewController(view.backgroundColor = dayBackGround)
            GreedSetupVC(view.backgroundColor = dayBackGround)
            ShotsViewController(view.backgroundColor = dayBackGround)
            GreedViewController(view.backgroundColor = dayBackGround)
            nightModeLabel.textColor = dayText
        }
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
