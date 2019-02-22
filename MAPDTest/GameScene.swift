//
//  GameScene.swift
//  MAPDTest
//
//  Created by Sreeram Ramakrishnan on 2019-02-21.
//  Copyright © 2019 Centennial College. All rights reserved.
//

import SpriteKit
import GameplayKit
import UIKit

let screenSize = UIScreen.main.bounds
var screenWidth: CGFloat?
var screenHeight: CGFloat?

class GameScene: SKScene {
    
    var background: Background?
    var handle: Handle?
    
    
    override func didMove(to view: SKView) {
        
        screenWidth = frame.width
        screenHeight = frame.height
        
        // add background to scene
       background = Background()
        addChild(background!)
        
        // add handle to scene
        handle = Handle()
        handle?.position.x = 300
        handle?.position.y = 140
        handle?.zPosition = 5
        addChild(handle!)
        
        // Label Config and adding to the scene
        ScoreBoard.BetLabel.position.x = 0
        ScoreBoard.BetLabel.position.y = -202
        
        ScoreBoard.BetLabel.fontColor = UIColor.yellow
        ScoreBoard.BetLabel.fontSize = 40.0
        ScoreBoard.BetLabel.zPosition = 3
        ScoreBoard.BetLabel.fontName = "Arial Bold"
        ScoreBoard.Bet = 1
        
        
        addChild(ScoreBoard.BetLabel)
        
        ScoreBoard.CreditsLabel.position.x = -180
        ScoreBoard.CreditsLabel.position.y = -202
        
        ScoreBoard.CreditsLabel.fontColor = UIColor.yellow
        ScoreBoard.CreditsLabel.fontSize = 40.0
        ScoreBoard.CreditsLabel.zPosition = 3
        ScoreBoard.CreditsLabel.fontName = "Arial Bold"
        ScoreBoard.Credit = 100
        
        
        addChild(ScoreBoard.CreditsLabel)
        
        ScoreBoard.WinLabel.position.x = 180
        ScoreBoard.WinLabel.position.y = -202
        
        ScoreBoard.WinLabel.fontColor = UIColor.yellow
        ScoreBoard.WinLabel.fontSize = 40.0
        ScoreBoard.WinLabel.zPosition = 3
        ScoreBoard.WinLabel.fontName = "Arial Bold"
        ScoreBoard.Win = 0
        
        
        addChild(ScoreBoard.WinLabel)
        
        ScoreBoard.UserLabel.position.x = 0
        ScoreBoard.UserLabel.position.y = 280
        
        ScoreBoard.UserLabel.fontColor = UIColor.yellow
        ScoreBoard.UserLabel.fontSize = 40.0
        ScoreBoard.UserLabel.zPosition = 3
        ScoreBoard.UserLabel.fontName = "Arial Bold"
        
        
        addChild(ScoreBoard.UserLabel)
        
        ScoreBoard.BetOneLabel.position.x = -180
        ScoreBoard.BetOneLabel.position.y = -280
        
        ScoreBoard.BetOneLabel.fontColor = UIColor.yellow
        ScoreBoard.BetOneLabel.fontSize = 40.0
        ScoreBoard.BetOneLabel.zPosition = 3
        ScoreBoard.BetOneLabel.fontName = "Arial Bold"
        
        
        addChild(ScoreBoard.BetOneLabel)
        
        ScoreBoard.BetMaxLabel.position.x = 180
        ScoreBoard.BetMaxLabel.position.y = -280
        
        ScoreBoard.BetMaxLabel.fontColor = UIColor.yellow
        ScoreBoard.BetMaxLabel.fontSize = 40.0
        ScoreBoard.BetMaxLabel.zPosition = 3
        ScoreBoard.BetMaxLabel.fontName = "Arial Bold"
        
        
        addChild(ScoreBoard.BetMaxLabel)
        
        ScoreBoard.QuitLabel.position.x = 180
        ScoreBoard.QuitLabel.position.y = -340
        
        ScoreBoard.QuitLabel.fontColor = UIColor.yellow
        ScoreBoard.QuitLabel.fontSize = 40.0
        ScoreBoard.QuitLabel.zPosition = 3
        ScoreBoard.QuitLabel.fontName = "Arial Bold"
        
        
        addChild(ScoreBoard.QuitLabel)
        
        ScoreBoard.ResetLabel.position.x = -180
        ScoreBoard.ResetLabel.position.y = -340
        
        ScoreBoard.ResetLabel.fontColor = UIColor.yellow
        ScoreBoard.ResetLabel.fontSize = 40.0
        ScoreBoard.ResetLabel.zPosition = 3
        ScoreBoard.ResetLabel.fontName = "Arial Bold"
        
        
        addChild(ScoreBoard.ResetLabel)
        
        ScoreBoard.PlusLabel.position.x = -20
        ScoreBoard.PlusLabel.position.y = -280
        
        ScoreBoard.PlusLabel.fontColor = UIColor.yellow
        ScoreBoard.PlusLabel.fontSize = 40.0
        ScoreBoard.PlusLabel.zPosition = 3
        ScoreBoard.PlusLabel.fontName = "Arial Bold"
        
        
        addChild(ScoreBoard.PlusLabel)
        
        ScoreBoard.MinusLabel.position.x = 20
        ScoreBoard.MinusLabel.position.y = -280
        
        ScoreBoard.MinusLabel.fontColor = UIColor.yellow
        ScoreBoard.MinusLabel.fontSize = 40.0
        ScoreBoard.MinusLabel.zPosition = 3
        ScoreBoard.MinusLabel.fontName = "Arial Bold"
        
        
        addChild(ScoreBoard.MinusLabel)
       
        }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            let location = touch.location(in: self)
            let touchedNode = atPoint(location)
            if touchedNode.name == "Bet One" {
                // Call the function here.
            }
            
            else if touchedNode.name == "Bet Max" {
                // Call the function here.
            }
            
            else if touchedNode.name == "Quit" {
                // Call the function here.
            }
            
            else if touchedNode.name == "Reset" {
                // Call the function here.
            }
        }
    }
    /*
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let label = self.label {
        }
        
        for t in touches { self.touchDown(atPoint: t.location(in: self)) }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchMoved(toPoint: t.location(in: self)) }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchUp(atPoint: t.location(in: self)) }
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchUp(atPoint: t.location(in: self)) }
    }
    */
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
       background?.Update()
    }
}
