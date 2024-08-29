//
//  ScreenSize.swift
//
//
//  Created by Dilshodi Kahori on 29/08/24.
//

import UIKit

public enum ScreenSize {
    static let width = UIScreen.main.bounds.size.width
    static let height = UIScreen.main.bounds.size.height
    static let maxLength = max(ScreenSize.width, ScreenSize.height)
    static let minLength = min(ScreenSize.width, ScreenSize.height)
}
