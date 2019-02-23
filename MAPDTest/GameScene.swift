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
import AVFoundation

struct Constant {
    static let win_sound : String = "win"
    static let spin_sound : String = "spin"
    
}

let screenSize = UIScreen.main.bounds
var screenWidth: CGFloat?
var screenHeight: CGFloat?

class GameScene: SKScene {
    
    var player : AVAudioPlayer?
    
    var background: Background?
    var handle: Handle?
    
    /*
    var bar: Textures.Bar?
    var cherry: Textures.Cherry?
    var crown: Textures.Crown?
    var diamond: Textures.Diamond?
    var lemon: Textures.Lemon?
    var seven: Textures.Seven?*/
    
    
    override func didMove(to view: SKView) {

        
        /////////////////////////////////////////////
        
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
        
        // add bet one to scene
        let betone = SKSpriteNode(imageNamed: "bet1Button")
        betone.position = CGPoint(x: -180, y: -270)
        betone.setScale(1.0)
        betone.zPosition = 5
        betone.name = "betone"
        self.addChild(betone)
        
        // add bet max to scene
        let betmax = SKSpriteNode(imageNamed: "betMaxButton")
        betmax.position = CGPoint(x: 180, y: -270)
        betmax.setScale(1.0)
        betmax.zPosition = 5
        betmax.name = "betmax"
        self.addChild(betmax)
        
        // add spin to scene
        let spin = SKSpriteNode(imageNamed: "spinButton")
        spin.position = CGPoint(x: 0, y: -330)
        spin.setScale(1.0)
        spin.zPosition = 5
        spin.name = "spin"
        self.addChild(spin)
        

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
        
        
        ScoreBoard.QuitLabel.position.x = 180
        ScoreBoard.QuitLabel.position.y = -340
        
        ScoreBoard.QuitLabel.fontColor = UIColor.yellow
        ScoreBoard.QuitLabel.fontSize = 40.0
        ScoreBoard.QuitLabel.zPosition = 3
        ScoreBoard.QuitLabel.fontName = "Arial Bold"
        ScoreBoard.QuitLabel.name = "Quit"
        
        
        addChild(ScoreBoard.QuitLabel)
        
        ScoreBoard.ResetLabel.position.x = -180
        ScoreBoard.ResetLabel.position.y = -340
        
        ScoreBoard.ResetLabel.fontColor = UIColor.yellow
        ScoreBoard.ResetLabel.fontSize = 40.0
        ScoreBoard.ResetLabel.zPosition = 3
        ScoreBoard.ResetLabel.fontName = "Arial Bold"
        ScoreBoard.ResetLabel.name = "Reset"
        
        
        addChild(ScoreBoard.ResetLabel)
        
        ScoreBoard.PlusLabel.position.x = -20
        ScoreBoard.PlusLabel.position.y = -280
        
        ScoreBoard.PlusLabel.fontColor = UIColor.yellow
        ScoreBoard.PlusLabel.fontSize = 40.0
        ScoreBoard.PlusLabel.zPosition = 3
        ScoreBoard.PlusLabel.fontName = "Arial Bold"
        ScoreBoard.PlusLabel.name = "PlusLabel"
        
        
        addChild(ScoreBoard.PlusLabel)
        
        ScoreBoard.MinusLabel.position.x = 20
        ScoreBoard.MinusLabel.position.y = -280
        
        ScoreBoard.MinusLabel.fontColor = UIColor.yellow
        ScoreBoard.MinusLabel.fontSize = 40.0
        ScoreBoard.MinusLabel.zPosition = 3
        ScoreBoard.MinusLabel.fontName = "Arial Bold"
        ScoreBoard.MinusLabel.name = "MinusLabel"
        
        addChild(ScoreBoard.MinusLabel)
       
        }
    //////////////////////////
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            let location = touch.location(in: self)
            let touchedNode = atPoint(location)
            
            if touchedNode.name == "Quit" {
                // Call the function here.
                exit(0)
            }
            
            else if touchedNode.name == "Reset" {
                // Call the function here.
                ScoreBoard.Bet = 1
                ScoreBoard.Credit = 100
                ScoreBoard.Win = 0
                ScoreBoard.User = ""
                
            }
                
            else if touchedNode.name == "betone" {
                // Call the function here.
                ScoreBoard.Bet = 1
            }
                
            else if touchedNode.name == "betmax" {
                // Call the function here.
                ScoreBoard.Bet = ScoreBoard.Credit
            }
                
            else if touchedNode.name == "spin" {
                // Call the function here.
                self.play(sound: Constant.spin_sound)
                
                
                if(ScoreBoard.Bet > 0 && ScoreBoard.Credit > 0){
                    ScoreBoard.Credit = ScoreBoard.Credit - ScoreBoard.Bet
                }
            }
            
            else if touchedNode.name == "PlusLabel" {
                // Call the function here.
                if(ScoreBoard.Bet<ScoreBoard.Credit)    {
                ScoreBoard.Bet = ScoreBoard.Bet + 1
                }
            }
            
            else if touchedNode.name == "MinusLabel" {
                // Call the function here.
                if(ScoreBoard.Bet>1)    {
                    ScoreBoard.Bet = ScoreBoard.Bet - 1
                }
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
    

   // let myItem = textures.randomItem()
    
    func play(sound name : String){
        guard let url = Bundle.main.url(forResource: name, withExtension: "wav") else{
            return
        }
        player = try? AVAudioPlayer(contentsOf: url)
        player?.play()
    }
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
       background?.Update()
    }
}

extension Array {
    func randomItem() -> Element? {
        if isEmpty { return nil }
        let index = Int(arc4random_uniform(UInt32(self.count)))
        return self[index]
    }
}
