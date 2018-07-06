//
//  ImageViewFactory.swift
//  Tinder
//
//  Created by Andrew Carvajal on 7/6/18.
//  Copyright © 2018 appdrew. All rights reserved.
//

import UIKit

enum ImageViewFactory {
    case standardImageView(imageName: String, cornerRadius: CGFloat?, interactionEnabled: Bool, contentMode: UIViewContentMode, sizeToFit: Bool)
    
    func createStandardImageView(imageName: String, cornerRadius: CGFloat?, interactionEnabled: Bool, contentMode: UIViewContentMode, sizeToFit: Bool) -> UIImageView {
        let image = UIImage(imageLiteralResourceName: imageName)
        let imageView = UIImageView(image: image)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.layer.cornerRadius = cornerRadius ?? 0
        imageView.layer.masksToBounds = true
        imageView.isUserInteractionEnabled = interactionEnabled
        imageView.contentMode = contentMode
        if sizeToFit {
            imageView.sizeToFit()
        }
        return imageView
    }
}
