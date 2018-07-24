//
//  UIView+subviews.swift
//  CP3Extensions
//
//  Created by Corné on 24/07/2018.
//  Copyright © 2018 CP3. All rights reserved.
//

import UIKit

extension UIView {

    func buttons() -> [UIButton] {
        return subviews(ofType: UIButton.self)
    }

    func subviews<T: UIView>(ofType type: T.Type) -> [T] {

        var subviews = [T]()

        for subview in self.subviews {

            subviews += subview.subviews(ofType: type)

            if let subview = subview as? T {
                subviews.append(subview)
            }
        }

        return subviews
    }
}
