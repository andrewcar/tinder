//
//  ViewController.swift
//  Tinder
//
//  Created by Andrew Carvajal on 7/6/18.
//  Copyright © 2018 appdrew. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var tinderCard: TinderCard = {
        let tc = TinderCard()
        tc.addGestureRecognizer(UIPanGestureRecognizer(target: self, action: #selector(swipeCard(sender:))))
        return tc
    }()
    
    let buttonsContainer: ButtonsView = {
        let c = ButtonsView()
        return c
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        setUpViews()
    }
    
    fileprivate func setUpViews() {
        view.addSubview(tinderCard)
        view.addSubview(buttonsContainer)
        
        NSLayoutConstraint.activate([
            tinderCard.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            tinderCard.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.85),
            tinderCard.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            tinderCard.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.7),
            
            buttonsContainer.topAnchor.constraint(equalTo: tinderCard.bottomAnchor, constant: 50),
            buttonsContainer.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            buttonsContainer.widthAnchor.constraint(equalTo: view.widthAnchor)
            ])
    }
    
    @objc fileprivate func swipeCard(sender: UIPanGestureRecognizer) {
        sender.swipeView(tinderCard)
    }
}

