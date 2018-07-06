//
//  ImageViewFactory.swift
//  Tinder
//
//  Created by Andrew Carvajal on 7/6/18.
//  Copyright © 2018 appdrew. All rights reserved.
//

import UIKit

enum ImageViewFactory {
    case standardImageView(imageName: String, cornerRadius: CGFloat, interactionEnabled: Bool, contentMode: UIViewContentMode, sizeToFit: Bool)
    
    var new: UIImageView {
        switch self {
        case .standardImageView(let imageName, let cornerRadius, let interactionEnabled, let contentMode, let sizeToFit):
            return createStandardImageView(imageName: imageName, cornerRadius: cornerRadius, interactionEnabled: interactionEnabled, contentMode: contentMode, sizeToFit: sizeToFit)
        }
    }
    
    func createStandardImageView(imageName: String, cornerRadius: CGFloat, interactionEnabled: Bool, contentMode: UIViewContentMode, sizeToFit: Bool) -> UIImageView {
        let image = UIImage(imageLiteralResourceName: imageName)
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
