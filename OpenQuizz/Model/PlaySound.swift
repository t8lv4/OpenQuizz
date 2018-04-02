//
//  PlaySound.swift
//  OpenQuizz
//
//  Created by Morgan on 02/04/2018.
//  Copyright © 2018 Morgan. All rights reserved.
//

import Foundation
import AVFoundation

class PlaySound {
    
    var player = AVAudioPlayer()
    let bleepPath = Bundle.main.path(forResource: "bleep", ofType: "wav")
    
    func playSound() {
        do {
            try player = AVAudioPlayer(contentsOf: URL(fileURLWithPath: bleepPath!))
        } catch {
            print("Could not load file")
        }
        
        player.play()
    }
}



