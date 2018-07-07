//
//  Swipeable.swift
//  Tinder
//
//  Created by Andrew Carvajal on 7/6/18.
//  Copyright © 2018 appdrew. All rights reserved.
//

import UIKit

protocol Swipeable {}

extension Swipeable where Self: UIPanGestureRecognizer {
    
    //MARK function available for any UIPanGestureRecognizer instance
    func swipeView(_ view: UIView) {
        
        switch state {
        case .changed:
            let translation = self.translation(in: view.superview)
            view.transform = transform(view: view, for: translation)
        case .ended:
            UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.4, initialSpringVelocity: 1.0, options: [], animations: {
                view.transform = .identity
            }, completion: nil)
        default:
            break
        }
    }
    
    fileprivate func transform(view: UIView, for translation: CGPoint) -> CGAffineTransform {
        let moveBy = CGAffineTransform(translationX: translation.x, y: translation.y)
        let rotation = -sin(translation.x / (view.frame.width * 4.0))
        return moveBy.rotated(by: rotation)
    }
}

extension UIPanGestureRecognizer: Swipeable {}
