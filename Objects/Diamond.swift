//
//  Diamond.swift
//  MAPDTest
//
//  Created by Sreeram Ramakrishnan on 2019-02-22.
//  Copyright © 2019 Centennial College. All rights reserved.
//

import Foundation
import SpriteKit
import GameplayKit

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

