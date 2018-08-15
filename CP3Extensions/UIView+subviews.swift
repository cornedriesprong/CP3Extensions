//
//  UIView+subviews.swift
//  CP3Extensions
//
//  Created by Corné on 24/07/2018.
//  Copyright © 2018 CP3. All rights reserved.
//

import UIKit

public extension UIView {

    public func buttons() -> [UIButton] {
        return subviews(ofType: UIButton.self)
    }

    public func subviews<T: UIView>(ofType type: T.Type) -> [T] {

        var subviews = [T]()

        for subview in self.subviews {

            subviews += subview.subviews(ofType: type)

            if let subview = subview as? T {
                subviews.append(subview)
            }
        }

        return subviews
    }

    var screenshot: UIImage {

        UIGraphicsBeginImageContextWithOptions(bounds.size, true, 0.0)
        if let tableView = self as? UITableView {
            tableView.superview!.layer.render(in: UIGraphicsGetCurrentContext()!)
        } else {
            layer.render(in: UIGraphicsGetCurrentContext()!)
        }
        let image = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();

        return image!
    }
}

public protocol UIViewLoading {}

public extension UIView: UIViewLoading {}

public extension UIViewLoading where Self: UIView {

    static func loadFromNib() -> UIView {

        let nibName = "\(self)".characters.split{$0 == "."}.map(String.init).last!
        let nib = UINib(nibName: nibName, bundle: nil)

        return nib.instantiate(withOwner: self, options: nil).first as! Self
    }
}
