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
        addChild(handle!)
        
        
       
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
