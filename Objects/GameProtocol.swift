//
//  GameProtocol.swift
//  MAPDTest
//
//  Created by Sreeram Ramakrishnan on 2019-02-21.
//  Copyright © 2019 Centennial College. All rights reserved.
//

import Foundation

protocol GameProtocol {
    
    func Reset()
    
    func CheckBounds()
    
    func Start()
    
    func Update()
}
