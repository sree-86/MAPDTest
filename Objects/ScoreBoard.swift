//
//  ScoreBoard.swift
//  MAPDTest
//
//  Created by Sreeram Ramakrishnan on 2019-02-21.
//  Copyright © 2019 Centennial College. All rights reserved.
//

import Foundation
import SpriteKit
import UIKit


class ScoreBoard {
    
    public static var CreditsLabel:SKLabelNode = SKLabelNode(text: "999")
    public static var BetLabel:SKLabelNode = SKLabelNode(text: "99")
    public static var UserLabel:SKLabelNode = SKLabelNode(text: "")
    public static var WinLabel:SKLabelNode = SKLabelNode(text: "999")
    
    
    // public static variables
    public static var Credit:Int = 100 {
        didSet {
            CreditsLabel.text = String(Credit)
        }
    }
    
    public static var Bet:Int = 1 {
        didSet {
            BetLabel.text = String(Bet)
        }
    }
    
    public static var Win:Int = 0 {
        didSet {
            WinLabel.text = String(Win)
        }
    }
    /*
     public static var HighScore:Int = 0 {
     didSet {
     print("A High Score has been set")
     }
     }*/
    
}
