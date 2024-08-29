//
//  UIColor+hex.swift
//
//
//  Created by Dilshodi Kahori on 29/08/24.
//

import UIKit

extension UIColor {
    convenience init(hex: String) {
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        var alpha: CGFloat = 1

        let hexColor = hex.replacingOccurrences(of: "#", with: "")
        let scanner = Scanner(string: hexColor)
        var hexNumber: UInt64 = 0

        if scanner.scanHexInt64(&hexNumber) {
            if hexColor.count == 8 {
                red = CGFloat((hexNumber & 0xff000000) >> 24) / 255
                green = CGFloat((hexNumber & 0x00ff0000) >> 16) / 255
                blue = CGFloat((hexNumber & 0x0000ff00) >> 8) / 255
                alpha = CGFloat(hexNumber & 0x000000ff) / 255
            } else if hexColor.count == 6 {
                red = CGFloat((hexNumber & 0xff0000) >> 16) / 255
                green = CGFloat((hexNumber & 0x00ff00) >> 8) / 255
                blue = CGFloat(hexNumber & 0x0000ff) / 255
            }
        }

        self.init(red: red, green: green, blue: blue, alpha: alpha)
    }

    public var resolvedColor: UIColor {
        guard let controller = UIApplication.shared.keyWindow?.rootViewController else {
            return self
        }
        return self.resolvedColor(with: controller.traitCollection)
    }
}
