//
//  UIColor+color(fromHexString).swift
//  CP3Extensions
//
//  Created by Corné on 24/07/2018.
//  Copyright © 2018 CP3. All rights reserved.
//

import UIKit

public extension UIColor {

    public func color(fromHexString hexString: String) -> UIColor {

        var hexColorString = hexString.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()

        if hexColorString.hasPrefix("#") {
            hexColorString = String(hexColorString[hexColorString.startIndex...].description)
        }

        if hexColorString.count != 6 {
            fatalError("Invalid hex color string")
        }

        var hexColorRGBValue: UInt32 = 0
        Scanner(string: hexColorString).scanHexInt32(&hexColorRGBValue)

        return changeHexColorCodeToRGB(hex: hexColorRGBValue, alpha: 1)
    }

    // MARK: - Helpers

    private func convertHexToRGB(hex: UInt32) -> UIColor {
        return changeHexColorCodeToRGB(hex: hex, alpha: 1)
    }

    private func changeHexColorCodeToRGB(hex: UInt32, alpha: CGFloat) -> UIColor {

        return UIColor(
            red: CGFloat((hex & 0xFF0000) >> 16)/255.0,
            green: CGFloat((hex & 0xFF00) >> 8)/255.0,
            blue: CGFloat((hex & 0xFF))/255.0,
            alpha: alpha)
    }

    private func rgbCalculation(redColor: CGFloat, greenColor: CGFloat, blueColor: CGFloat, alphaValue: CGFloat) -> UIColor {
        return UIColor(red: redColor/255, green: greenColor/255, blue: blueColor/255, alpha: alphaValue)
    }
}
