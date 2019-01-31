//
//  ViewController.swift
//  importaudiokit
//
//  Created by Anita Shen on 21/07/2017.
//  Copyright © 2017 Anita Shen. All rights reserved.
//

import UIKit
import AVFoundation
import AudioKit

class ViewController: UIViewController {

    //declare and instantiate a variable for our sound source
    var sound : AVAudioPlayer! = nil
    //create a placeholder for the path to the sounds Bundle.main is the top of the directory structure
    let soundFileURL_01 = Bundle.main.url(forResource: "metal", withExtension: "WAV")
    let soundFileURL_02 = Bundle.main.url(forResource: "yo", withExtension: "WAV")
    var audiofile : AKAudioFile?
    var audioKitSound : AKAudioPlayer?

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //AUDIOKIT STYLE
        do {
            audiofile = try AKAudioFile(forReading: soundFileURL_01!)

        } catch {
            let error = "Could not find path"
            print(error)
        }
        do {
            audioKitSound = try AKAudioPlayer(file: audiofile!)
        } catch {
            let error = "Could not load file"
            print(error)
        }
        audioKitSound?.looping = true
        AudioKit.output = audioKitSound
        AudioKit.start()
        audioKitSound?.play()
        
        
        
        //AVFOUNDATION STYLE
        
        do {
            try sound = AVAudioPlayer(contentsOf: soundFileURL_02!)
        } catch {
            print("Could not load file")
            
        }
        print (sound.numberOfChannels)
        sound.volume = 1
        sound.numberOfLoops = -1
        // How many times you want to play the sound ? Set a negative value to loop indefinitely
        sound.prepareToPlay()
        sound.play()
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

