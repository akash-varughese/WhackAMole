//
//  ViewController.swift
//  WhackAMole
//
//  Created by Varughese, Akash N on 10/15/20.
//  Copyright © 2020 Varughese, Akash N. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var btn = UIButton()
    var screenWidth = 0
    var screenHeight = 0
    var scoreBox = UILabel()
    var background = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let screenBounds: CGRect = UIScreen.main.bounds
        screenWidth = Int(screenBounds.width)
        screenHeight = Int(screenBounds.height)
        let scoreBox = UILabel(frame: CGRect(x: 20, y: 30, width: 200, height: screenHeight/10))
        scoreBox.text = "0"
        scoreBox.center = CGPoint(x: 20, y: 30)
        scoreBox.textAlignment = .center
        self.view.addSubview(scoreBox)
        let background = UILabel(frame: CGRect(x: 20, y: 40, width: screenWidth-40, height: screenHeight-60))
        background.backgroundColor = .green
        self.view.addSubview(background)
    }
}
