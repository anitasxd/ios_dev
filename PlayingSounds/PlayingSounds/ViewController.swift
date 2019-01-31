//
//  ViewController.swift
//  PlayingSounds
//
//  Created by Martin Jaroszewicz on 7/19/17.
//  Copyright © 2017 Martin Jaroszewicz. All rights reserved.
//

import UIKit
import AVFoundation
import AudioKit

class ViewController: UIViewController {

    //Declare and instantiate a variable for our sound source
    var sound : AVAudioPlayer! = nil
    //Create a placeholder for the path to the sound Bundle.main is the top of the directory structrure
    let soundFileURL_01 = Bundle.main.url(forResource: "23_Dripping_Tap", withExtension: "aif")
    let soundFileURL_02 = Bundle.main.url(forResource: "15", withExtension: "wav")
    var audiofile : AKAudioFile?
    var audioKitSound : AKAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // =========================================================================================================================
        // AudiokitStyle
        // =========================================================================================================================

        
        do {
            audiofile = try AKAudioFile(forReading: soundFileURL_01!)
            
        } catch {
            let error = "Could not  find path"
            print(error)
        }
        do {
            audioKitSound = try AKAudioPlayer(file: audiofile!)
        } catch {
            let error = "Could not  load file"
            print(error)
        }
        audioKitSound?.looping = true
        AudioKit.output = audioKitSound
        AudioKit.start()
        audioKitSound?.play()
        
        // =========================================================================================================================
        // AVFoundation Style
        // =========================================================================================================================
        
        
        //AVFoundation style
      
        do {
            try sound = AVAudioPlayer(contentsOf: soundFileURL_02!)
        } catch  {
            print("Couldn't load file")
        }
        print(sound.numberOfChannels)
        sound.volume = 1
        sound.numberOfLoops = -1 // How many times you want to play the sound ? Set a negative value to loop indefinetly
        sound.prepareToPlay()
        sound.play()

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

