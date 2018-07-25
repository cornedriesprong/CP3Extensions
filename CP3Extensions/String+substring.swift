//
//  String+substring.swift
//  CP3Extensions
//
//  Created by Corné on 25/07/2018.
//  Copyright © 2018 CP3. All rights reserved.
//

import Foundation

public extension String {

    func substring(_ r: Range<Int>) -> String {

        let fromIndex = self.index(self.startIndex, offsetBy: r.lowerBound)
        let toIndex = self.index(self.startIndex, offsetBy: r.upperBound)

        return self.substring(with: Range<String.Index>(uncheckedBounds: (lower: fromIndex, upper: toIndex)))
    }
}
