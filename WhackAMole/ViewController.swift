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
    var numHits = 0
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let screenBounds: CGRect = UIScreen.main.bounds
        screenWidth = Int(screenBounds.width)
        screenHeight = Int(screenBounds.height)
        let scoreBox = UILabel(frame: CGRect(x: 25, y: 30, width: 200, height: screenHeight/10))
        scoreBox.text = "\(numHits)"
        scoreBox.center = CGPoint(x: 25, y: 30)
        scoreBox.textAlignment = .center
        self.view.addSubview(scoreBox)
        let background = UILabel(frame: CGRect(x: 20, y: 40, width: screenWidth-40, height: screenHeight-60))
        background.backgroundColor = UIColor(red: 0/255, green: 190/255, blue: 35/255, alpha: 1)
        self.view.addSubview(background)
        btn.frame = CGRect(x: (screenWidth/2)-20, y: 45, width: 40, height: 40)
        btn.backgroundColor = .brown
        btn.layer.cornerRadius = 20
        btn.addTarget(self, action: #selector(hitMe(_:)), for: .touchUpInside)
        self.view.addSubview(btn)
        
    }
        @objc func hitMe(_ sender:UIButton!) {
            btn.removeFromSuperview()
            // new button
            let randomDiameter = Int.random(in: 10...50)
            let maxXRight = (screenWidth - 20) - randomDiameter
            let maxYBottom = (screenHeight - 20) - randomDiameter
            let randomX = Int.random(in: 20...maxXRight)
            let randomY = Int.random(in: 20...maxYBottom)
            btn.frame = CGRect(x: randomX, y: randomY, width: randomDiameter, height: randomDiameter)
            btn.layer.cornerRadius = CGFloat(randomDiameter/2)   // make radius 1/2 width
            view.addSubview(btn)
            numHits += 1
            scoreBox.text = "\(numHits)"
    }
}
