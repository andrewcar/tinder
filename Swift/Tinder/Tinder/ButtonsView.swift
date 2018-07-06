//
//  ButtonsView.swift
//  Tinder
//
//  Created by Andrew Carvajal on 7/6/18.
//  Copyright © 2018 appdrew. All rights reserved.
//

import UIKit

class ButtonsView: BaseView {
    
    lazy var likeButton: UIButton = {
        let b = ButtonFactory.buttonWithImage(image: UIImage(imageLiteralResourceName: "like"), cornerRadius: 0, target: self, selector: #selector(like), sizeToFit: true).new
        return b
    }()
    
    lazy var passButton: UIButton = {
        let b = ButtonFactory.buttonWithImage(image: UIImage(imageLiteralResourceName: "pass"), cornerRadius: 0, target: self, selector: #selector(pass), sizeToFit: true).new
        return b
    }()
    
    lazy var superLikeButton: UIButton = {
        let b = ButtonFactory.buttonWithImage(image: UIImage(imageLiteralResourceName: "superlike"), cornerRadius: 0, target: self, selector: #selector(superLike), sizeToFit: true).new
        return b
    }()
    
    lazy var container: UIStackView = {
        let c = UIStackView(arrangedSubviews: [self.likeButton, self.passButton, self.superLikeButton])
        c.translatesAutoresizingMaskIntoConstraints = false
        c.spacing = 20
        c.distribution = .fillEqually
        return c
    }()
    
    override func setUpViews() {
        addSubview(container)
        
        NSLayoutConstraint.activate([
            container.leadingAnchor.constraint(equalTo: leadingAnchor),
            container.topAnchor.constraint(equalTo: topAnchor),
            container.widthAnchor.constraint(equalTo: widthAnchor),
            container.heightAnchor.constraint(equalTo: heightAnchor)
            ])
    }
    
    @objc func like() {
        print("like")
    }
    
    @objc func pass() {
        print("pass")
    }
    
    @objc func superLike() {
        print("super like")
    }
}
