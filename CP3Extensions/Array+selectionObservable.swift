//
//  Array+selectionObservable.swift
//  CP3Extensions
//
//  Created by Corné on 24/07/2018.
//  Copyright © 2018 CP3. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa

public extension Array where Element: UIButton {

    public func selectionObservable() -> Observable<Int> {

        let observables = self.map { button -> Observable<Int> in

            // map button taps to arrays of selected button indices
            return button.rx.tap.asObservable().map {

                self.forEach { $0.isSelected = false }
                button.isSelected = !button.isSelected
                return self.enumerated().filter { $0.1.isSelected }.map { $0.0 }[0]
            }
        }

        return Observable.merge(observables)
    }
}
