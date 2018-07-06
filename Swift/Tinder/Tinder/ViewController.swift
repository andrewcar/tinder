//
//  ViewController.swift
//  Tinder
//
//  Created by Andrew Carvajal on 7/6/18.
//  Copyright © 2018 appdrew. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        let profileImageView = ImageViewFactory.standardImageView(imageName: "jynerso", cornerRadius: 0, interactionEnabled: true, contentMode: .scaleAspectFill, sizeToFit: false).new
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

