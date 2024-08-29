//
//  File.swift
//  
//
//  Created by Dilshodi Kahori on 29/08/24.
//

import UIKit

extension UIView {
    /// Apply backgroundColor to a UIView
    /// - Parameter color: UIColor for the background
    public func applyBackground(color: UIColor) {
        self.backgroundColor = color
    }

    /// Apply shadow to a UIView
    /// - Parameter color: UIColor of the shadow
    /// - Parameter opacity: Transparency of the shadow
    /// - Parameter radius: Radius of the shadow
    /// - Parameter offset: Offset of the shadow
    public func applyShadow(color: UIColor = .darkGray, opacity: Float = 0.3, radius: CGFloat = 3.0, offset: CGSize = .zero) {
        layer.shadowColor = color.cgColor
        layer.shadowOpacity = opacity
        layer.shadowRadius = radius
        layer.shadowOffset = offset
    }

    /// Apply cornerRadius to a UIView
    /// - Parameter radius: CGFloat of the corner
    ///
    /// - ATTENTION: By default clipsToBounds and cornerCurve = .continuous
    public func applyCorner(radius: CGFloat = 16) {
        layer.cornerRadius = radius
        layer.cornerCurve = .continuous
        clipsToBounds = true
    }
}
