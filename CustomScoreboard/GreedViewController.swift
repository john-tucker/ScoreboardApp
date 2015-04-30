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
    func hideKeyBoard()
    {
        roundScoreLabel.resignFirstResponder()
    }
    @IBAction func screenTapped(sender: UITapGestureRecognizer)
    {
        hideKeyBoard()
    }
    
    @IBOutlet weak var playerTurnLabel: UILabel!
    var playerNumber = 0
    
    var players:[Int] = []
    
    @IBAction func nextPlayerButton(sender : UIButton)
    {
        whoseTurn()
    }
    
    func whoseTurn()
    {
        playerNumber++
        println(playerNumber)
        playerTurnLabel.text = "\(playerNumber)"
        
        if playerNumber == 1
        {
            playerTurnLabel.backgroundColor = UIColor.blueColor()
        }
        if playerNumber == 2
        {
            playerTurnLabel.backgroundColor = UIColor.redColor()
        }
        if playerNumber == 3
        {
            playerTurnLabel.backgroundColor = UIColor.yellowColor()
        }
        if playerNumber == 4
        {
            playerTurnLabel.backgroundColor = UIColor.greenColor()
        }
        if playerNumber == 5
        {
            playerTurnLabel.backgroundColor = UIColor.purpleColor()
        }
        
        if playerNumber == 6
        {
            playerNumber = 0
            playerTurnLabel.backgroundColor = UIColor.orangeColor()
        }
    }
    
    @IBOutlet weak var playerScoreLabel: UILabel!
    @IBOutlet weak var roundScoreLabel: UITextField!
    @IBOutlet weak var newScoreLabel: UILabel!

    @IBAction func scoreButton(sender: UIButton)
    {
        calcScore()
    }
    
    func calcScore()
    {
        var playerScore = 0
        var roundScore = roundScoreLabel.text.toInt()
        var newScore = 0

        if roundScore != nil
        {
            newScore = playerScore + roundScore!
            newScoreLabel.text = "\(newScore)"
            roundScoreLabel.resignFirstResponder()
 
        }       
    }
    
    
    
    @IBAction func rulesButton(sender: UIButton)
    {
        var alert = UIAlertController(title: "Rules:", message: "Players roll 6 die to begin with on their turn, removing at least one scoring dice each turn.  If all 6 die score, the player collects all dice, and rerolls, building on their score.  The first player to reach the threshold, usually 10,000, is the winner unless the other players can surpass the winner's score in one more turn.  The winner does not get another turn after passing the threshold.", preferredStyle: UIAlertControllerStyle.Alert)
        var cancelAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.Cancel, handler: ({Action in}))
        
        alert.addAction(cancelAction)
        self.presentViewController(alert, animated: true, completion: nil)

    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

    }

   
}
