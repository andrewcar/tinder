//
//  BaseView.swift
//  Tinder
//
//  Created by Andrew Carvajal on 7/6/18.
//  Copyright © 2018 appdrew. All rights reserved.
//

import UIKit

class BaseView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        translatesAutoresizingMaskIntoConstraints = false
        setUpViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    fileprivate func setUpViews() {
        // perform UI configuration in child classes
    }
}
