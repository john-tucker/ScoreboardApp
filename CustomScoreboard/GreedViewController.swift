//
//  GreedViewController.swift
//  CustomScoreboard
//
//  Created by Tucker on 4/29/15.
//  Copyright (c) 2015 TuckerSamEmily. All rights reserved.
//

import UIKit

class GreedViewController: UIViewController
{
    
    @IBOutlet weak var playerPicker: UIPickerView!
    
    var numberOfPlayers = ["1", "2", "3", "4", "5", "6"]
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return numberOfPlayers.count
    }
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        return numberOfPlayers[row]
    }

    
    @IBAction func rulesButton(sender: UIButton)
    {
        var alert = UIAlertController(title: "Rules:", message: "Players roll 6 die to begin with on their turn, removing at least one scoring dice each turn.  If all 6 die score, the player collects all dice, and rerolls, building on their score.  The first player to reach the threshold, usually 10,000, is the winner unless the other players can surpass the winner's score in one more turn.  The winner does not get another turn after passing the threshold.", preferredStyle: UIAlertControllerStyle.Alert)
        var cancelAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.Cancel, handler: ({Action in
            
        }))
        
        alert.addAction(cancelAction)
        self.presentViewController(alert, animated: true, completion: nil)

    }

    override func viewDidLoad()
    {
        super.viewDidLoad()

    }

   
}
