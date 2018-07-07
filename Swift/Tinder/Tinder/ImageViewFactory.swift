//
//  ImageViewFactory.swift
//  Tinder
//
//  Created by Andrew Carvajal on 7/6/18.
//  Copyright © 2018 appdrew. All rights reserved.
//

import UIKit

enum ImageViewFactory {
    case standardImageView(image: UIImage, cornerRadius: CGFloat, interactionEnabled: Bool, contentMode: UIViewContentMode, sizeToFit: Bool)
    
    var new: UIImageView {
        switch self {
        case .standardImageView(let image, let cornerRadius, let interactionEnabled, let contentMode, let sizeToFit):
            return createStandardImageView(image: image, cornerRadius: cornerRadius, interactionEnabled: interactionEnabled, contentMode: contentMode, sizeToFit: sizeToFit)
        }
    }
    
    func createStandardImageView(image: UIImage, cornerRadius: CGFloat, interactionEnabled: Bool, contentMode: UIViewContentMode, sizeToFit: Bool) -> UIImageView {
        let imageView = UIImageView(image: image)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.layer.cornerRadius = cornerRadius
        imageView.clipsToBounds = true
        imageView.isUserInteractionEnabled = interactionEnabled
        imageView.contentMode = contentMode
        if sizeToFit {
            imageView.sizeToFit()
        }
        return imageView
    }
}
