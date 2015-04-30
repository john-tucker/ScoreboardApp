//
//  GreedSetupViewController.swift
//  CustomScoreboard
//
//  Created by Tucker on 4/29/15.
//  Copyright (c) 2015 TuckerSamEmily. All rights reserved.
//

import UIKit

class GreedSetupVC: UIViewController
{
    var GSArray = GreedScoreArray()
    @IBOutlet weak var nameOne: UITextField!
    @IBOutlet weak var nameTwo: UITextField!
    @IBOutlet weak var nameThree: UITextField!
    @IBOutlet weak var nameFour: UITextField!
    @IBOutlet weak var nameFive: UITextField!
    @IBOutlet weak var nameSix: UITextField!
    
    @IBOutlet weak var thresholdAmt: UITextField!
   
    func arrayOne()
    {
        if nameOne != nil
        {
            GreedScoreArray(playerName: "\(nameOne)", playerNumber: 1, playerScore: 0)
            println(GSArray)

        }
        
                
    }
    
    func hideKeyboards()
    {
        nameOne.resignFirstResponder()
        nameTwo.resignFirstResponder()
        nameThree.resignFirstResponder()
        nameFour.resignFirstResponder()
        nameFive.resignFirstResponder()
        nameSix.resignFirstResponder()
    }
    
    @IBAction func hideKeys(sender: AnyObject)
    {
        hideKeyboards()
    }
   
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

    }

}