//
//  CALayer+addShadow.swift
//  CP3Extensions
//
//  Created by Corné on 24/07/2018.
//  Copyright © 2018 CP3. All rights reserved.
//

import UIKit

public extension CALayer {

    public func addShadow() {

        shadowOpacity = 0.3
        shadowOffset = CGSize(
            width: 3,
            height: 3)
    }
}
