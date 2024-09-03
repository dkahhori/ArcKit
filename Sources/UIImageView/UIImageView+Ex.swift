//
//  File.swift
//  
//
//  Created by Dilshodi Kahori on 03/09/24.
//

import UIKit

public extension UIImageView {
    enum ImageSource {
        case named(String)
        case system(String)
    }

    func set(image source: ImageSource) {
        switch source {
        case .named(let imageName): self.image = UIImage(named: imageName)
        case .system(let systemImageName): self.image = UIImage(systemName: systemImageName)
        }
    }
}
