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
    var playerButtonNumber = 0
    var playerNumber = 0
    
    var players:[Int] = []
    
    @IBAction func nextPlayerButton(sender : UIButton)
    {
        whoseTurn()
    }
    
    var scoreArray : [GreedScoreArray] = []
    
    @IBOutlet weak var playerScoreLabel: UILabel!
    @IBOutlet weak var roundScoreLabel: UITextField!
    @IBOutlet weak var newScoreLabel: UILabel!

    func whoseTurn()
    {
        var endTurnRange = scoreArray.count
        var range = -1*(0-(endTurnRange+1))
        
        var playerScore = 0
        var runningScore = 0
        var roundScore = roundScoreLabel.text.toInt()
        var newScore = 0
        
        if true
        {
        playerButtonNumber++
        playerTurnLabel.text = "\(playerButtonNumber)"
        playerNumber <= range
        var playerScoreText = runningScore.description
        
        if playerButtonNumber == 1
        {
            playerTurnLabel.backgroundColor = UIColor.blueColor()
            playerScoreLabel.text = playerScoreText
            scoreArray.removeLast()
            runningScore = playerScoreText.toInt()!
            newScore = playerScore + runningScore
            
            runningScore = newScore
            
        }
        if playerButtonNumber == 2
        {
            playerTurnLabel.backgroundColor = UIColor.redColor()
        }
        if playerButtonNumber == 3
        {
            playerTurnLabel.backgroundColor = UIColor.yellowColor()
        }
        if playerButtonNumber == 4
        {
            playerTurnLabel.backgroundColor = UIColor.greenColor()
        }
        if playerButtonNumber == 5
        {
            playerTurnLabel.backgroundColor = UIColor.purpleColor()
        }
        
        if playerButtonNumber == 6
        {
            playerButtonNumber = 0
            playerTurnLabel.backgroundColor = UIColor.orangeColor()
        }
        }
    }
    
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
