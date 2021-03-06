//
//  GreedScoreArray.swift
//  CustomScoreboard
//
//  Created by Tucker on 4/29/15.
//  Copyright (c) 2015 TuckerSamEmily. All rights reserved.
//

import UIKit

class GreedScoreArray: NSObject
{
    var playerName = ""
    var playerNumber = 0
    var runningScore = 0
    
    convenience init(playerName: String!, playerNumber: Int!, runningScore: Int!)
    {
        self.init()
        self.playerName = playerName
        self.playerNumber = playerNumber
        self.runningScore = runningScore
    }
}
