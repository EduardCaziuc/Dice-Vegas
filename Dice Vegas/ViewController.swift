//
//  ViewController.swift
//  Dice Vegas
//
//  Created by Eduard Caziuc on 21/10/2017.
//  Copyright © 2017 Eduard Caziuc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var randomDiceIndex1: Int = 0
    var randomDiceIndex2: Int = 0
     var diceSoundProvider = DiceSoundProvider()
    @IBOutlet weak var diceImageView1: UIImageView!
    
    @IBOutlet weak var diceImageView2: UIImageView!
    
    @IBOutlet weak var DiceeLogo: UIImageView!
    let arrayOfImagesProvider = arrayOfImages
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateDiceImages()
    
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        updateDiceImages()
        diceImageView1.wiggle()
        diceImageView2.wiggle()
        diceSoundProvider.playDiceSound()
        
    }
    
    func updateDiceImages() {
        randomDiceIndex1 = Int(arc4random_uniform(6))
        randomDiceIndex2 = Int(arc4random_uniform(6))
        
        
        
        diceImageView1.image = UIImage(named: arrayOfImagesProvider[randomDiceIndex1])
        diceImageView2.image = UIImage(named: arrayOfImagesProvider[randomDiceIndex2])
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateDiceImages()
    }

}

