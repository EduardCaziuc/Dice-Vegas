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
        
        guard let url = Bundle.main.url(forResource: "Roll Dice", withExtension: "mp3") else { return }
        
        do {
            try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
            try AVAudioSession.sharedInstance().setActive(true)
            
            diceRollSound = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)
            
            guard let aPlayer = diceRollSound else { return }
            aPlayer.play()
            
        } catch let error {
            print(error.localizedDescription)
        }
    }
}
