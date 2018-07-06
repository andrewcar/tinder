//
//  LabelFactory.swift
//  Tinder
//
//  Created by Andrew Carvajal on 7/6/18.
//  Copyright © 2018 appdrew. All rights reserved.
//

import UIKit

enum LabelFactory {
    case standardLabel(text: String, textColor: UIColor, fontStyle: UIFontTextStyle, textAlignment: NSTextAlignment?, sizeToFit: Bool, adjustToFit: Bool)
    
    var new: UILabel {
        switch self {
        case .standardLabel(let text, let textColor, let fontStyle, let textAlignment, let sizeToFit, let adjustToFit):
            return createStandardLabel(text: text, textColor: textColor, fontStyle: fontStyle, textAlignment: textAlignment, sizeToFit: sizeToFit, adjustToFit: adjustToFit)
        }
    }
    
    func createStandardLabel(text: String, textColor: UIColor, fontStyle: UIFontTextStyle, textAlignment: NSTextAlignment?, sizeToFit: Bool, adjustToFit: Bool) -> UILabel {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.adjustsFontSizeToFitWidth = adjustToFit
        label.text = text
        label.font = UIFont.preferredFont(forTextStyle: fontStyle)
        label.textAlignment = textAlignment ?? .left
        label.textColor = textColor
        if sizeToFit {
            label.sizeToFit()
        }
        return label
    }
}
