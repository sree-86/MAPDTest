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
    
    class Lemon : GameObject{
    init() {
        // initialize the object with an image
        super.init(imageString: "lemon", initialScale: 1.7)
        Start()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
        
    }
    
    class Diamond : GameObject{
        init() {
            // initialize the object with an image
            super.init(imageString: "dimond", initialScale: 1.7)
            Start()
        }
        
        required init?(coder aDecoder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
        
    }
    
    class Seven : GameObject{
        init() {
            // initialize the object with an image
            super.init(imageString: "seven", initialScale: 1.7)
            Start()
        }
        
        required init?(coder aDecoder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
        
    }
    
    class Cherry : GameObject{
        init() {
            // initialize the object with an image
            super.init(imageString: "cherry", initialScale: 1.7)
            Start()
        }
        
        required init?(coder aDecoder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
        
    }
    
    class Crown : GameObject{
        init() {
            // initialize the object with an image
            super.init(imageString: "crown", initialScale: 1.7)
            Start()
        }
        
        required init?(coder aDecoder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
        
    }
    
    class Bar : GameObject{
        init() {
            // initialize the object with an image
            super.init(imageString: "bar", initialScale: 1.7)
            Start()
        }
        
        required init?(coder aDecoder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
        
    }
    
    
    
}
