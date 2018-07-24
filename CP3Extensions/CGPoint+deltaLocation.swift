//
//  CGPoint+deltaLocation.swift
//  CP3Extensions
//
//  Created by Corné on 24/07/2018.
//  Copyright © 2018 CP3. All rights reserved.
//

import Foundation

public extension CGPoint {

    public func deltaLocation(from location: CGPoint) -> CGPoint {

        return CGPoint(
            x: Double(self.x - location.x),
            y: Double(self.y - location.y))
    }
}
