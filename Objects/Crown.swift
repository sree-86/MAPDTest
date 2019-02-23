//
//  Crown.swift
//  MAPDTest
//
//  Created by Sreeram Ramakrishnan on 2019-02-22.
//  Copyright © 2019 Centennial College. All rights reserved.
//

import Foundation
import SpriteKit
import GameplayKit

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

