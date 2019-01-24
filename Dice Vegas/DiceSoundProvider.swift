//
//  DiceSoundProvider.swift
//  Dice Vegas
//
//  Created by Eduard Caziuc on 02/07/2018.
//  Copyright © 2018 Eduard Caziuc. All rights reserved.
//

import AVFoundation

struct DiceSoundProvider {
    
    var diceRollSound: AVAudioPlayer?
    
    mutating func playDiceSound() {
        
        do {
            
            if let url = Bundle.main.path(forResource: "Roll Dice", ofType: "mp3") {
                diceRollSound = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: url))
            } else { print("Audio File not found") ; return }
            
            
            guard let player = diceRollSound else { return }
            player.play()
            
        } catch let error {
            print("Audio file failed with an error: \(error.localizedDescription)")
        }
    }
}
