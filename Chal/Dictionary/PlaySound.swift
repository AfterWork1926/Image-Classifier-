//
//  PlaySound.swift
//  Chal
//
//  Created by Roberto Farella on 08/03/22.
//

import Foundation
import AVFoundation
var audioPlayer: AVAudioPlayer!

//Play soundtrack
func playSound(_ fileName : String) {
    guard let soundURL = Bundle.main.url(forResource: fileName, withExtension: nil ) else {
        fatalError("Unable to find \(fileName) in bundle")
    }
    do {
        audioPlayer = try AVAudioPlayer(contentsOf: soundURL)
//        audioPlayer.numberOfLoops = -1
        audioPlayer.prepareToPlay()
        audioPlayer.play()
    } catch {
        print(error.localizedDescription)
    }
}
func playSoundStop(_ fileName : String) {
    guard let soundURL = Bundle.main.url(forResource: fileName, withExtension: nil ) else {
        fatalError("Unable to find \(fileName) in bundle")
    }
    do {
        audioPlayer = try AVAudioPlayer(contentsOf: soundURL)
        audioPlayer.numberOfLoops = -1
        audioPlayer.prepareToPlay()
        audioPlayer.stop()
    } catch {
        print(error.localizedDescription)
    }
}

