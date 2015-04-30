//
//  GreedSetupVC.swift
//  CustomScoreboard
//
//  Created by Tucker on 4/29/15.
//  Copyright (c) 2015 TuckerSamEmily. All rights reserved.
//

import UIKit

class GreedSetupVC: UIViewController
{
    var array : [GreedScoreArray] = []
    @IBOutlet weak var nameOne: UITextField!
    @IBOutlet weak var nameTwo: UITextField!
    @IBOutlet weak var nameThree: UITextField!
    @IBOutlet weak var nameFour: UITextField!
    @IBOutlet weak var nameFive: UITextField!
    @IBOutlet weak var nameSix: UITextField!
    
    @IBOutlet weak var thresholdAmt: UITextField!
   
    func scoreArray()
    {
        if nameOne != nil
        {
            array.append(GreedScoreArray(playerName: "\(nameOne)", playerNumber: 1, runningScore: 0))
        }
        if nameTwo != nil
        {
            array.append(GreedScoreArray(playerName: "\(nameTwo)", playerNumber: 2, runningScore: 0))
        }
        if nameThree != nil
        {
            array.append(GreedScoreArray(playerName: "\(nameThree)", playerNumber: 3, runningScore: 0))
        }
        if nameFour != nil
        {
            array.append(GreedScoreArray(playerName: "\(nameFour)", playerNumber: 4, runningScore: 0))
        }
        if nameFive != nil
        {
            array.append(GreedScoreArray(playerName: "\(nameFive)", playerNumber: 5, runningScore: 0))
        }
        if nameSix != nil
        {
            array.append(GreedScoreArray(playerName: "\(nameSix)", playerNumber: 6, runningScore: 0))
        }
        
        else
        {
            var endTurnRange = array.count
            println(endTurnRange)
        }
    }
    
    @IBAction func setupArray(sender: AnyObject)
    {
        scoreArray()
    }
    
    func hideKeyboards()
    {
        nameOne.resignFirstResponder()
        nameTwo.resignFirstResponder()
        nameThree.resignFirstResponder()
        nameFour.resignFirstResponder()
        nameFive.resignFirstResponder()
        nameSix.resignFirstResponder()
        thresholdAmt.resignFirstResponder()
    }
    
    @IBAction func hideKeys(sender: AnyObject)
    {
        hideKeyboards()
    }
   
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)
    {
        if (segue.identifier == "GreedSetup")
        {
            var dvc = segue.destinationViewController as! GreedViewController
            dvc.scoreArray = array
            /*
            dvc.nameP1 = nameOne.text
            dvc.nameP2 = nameTwo.text
            dvc.nameP3 = nameThree.text
            dvc.nameP4 = nameFour.text
            dvc.nameP5 = nameFive.text
            dvc.nameP6 = nameSix.text
            */
        }
    }
    
    @IBOutlet weak var greed: UILabel!
    @IBOutlet weak var info: UILabel!
    @IBOutlet weak var text1: UILabel!
    @IBOutlet weak var text2: UILabel!
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

    }

}