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
    
    var bleep = AVAudioPlayer()
    let bleepPath = Bundle.main.path(forResource: "bleep", ofType: "wav")
    
    var chord = AVAudioPlayer()
    let chordPath = Bundle.main.path(forResource: "chord", ofType: "wav")
    
    func playBleep() {
        do {
            try bleep = AVAudioPlayer(contentsOf: URL(fileURLWithPath: bleepPath!))
        } catch {
            print("Could not locate file")
        }
        
        bleep.play()
    }
    
    func playChord() {
        do {
            try chord = AVAudioPlayer(contentsOf: URL(fileURLWithPath: chordPath!))
        } catch {
            print("Could not locate file")
        }
        
        chord.play()
    }
}
