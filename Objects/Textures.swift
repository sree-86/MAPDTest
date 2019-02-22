//
//  Textures.swift
//  MAPDTest
//
//  Created by Sreeram Ramakrishnan on 2019-02-21.
//  Copyright © 2019 Centennial College. All rights reserved.
//

import Foundation
import SpriteKit
import GameplayKit

class Textures : GameObject {
    // Initializers
    init() {
        // initialize the object with an image
        super.init(imageString: "lemon", initialScale: 1.7)
        //var imagevar =
        
        //var player = SKSpriteNode(imageNamed:"diamond")
        
        //var imagevar =
        
        //super.init(imageString: player, initialScale: 1.7)
        Start()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
