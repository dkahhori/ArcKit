//
//  ArcLabel.swift
//
//
//  Created by Dilshodi Kahori on 29/08/24.
//

import UIKit

open class ArcLabel: UILabel {
    public init(
        text: String,
        textColor: UIColor = .label,
        alignment: NSTextAlignment,
        numberOfLines: Int = 0
    ) {
        super.init(frame: .zero)
        self.text = text
        self.textColor = textColor
        self.textAlignment = alignment
        self.numberOfLines = numberOfLines
        self.sizeToFit()
    }
    
    required public init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
