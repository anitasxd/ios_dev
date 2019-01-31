//
//  ViewController.swift
//  importingaudiowithoutspatialization
//
//  Created by Anita Shen on 21/07/2017.
//  Copyright © 2017 Anita Shen. All rights reserved.
//

import UIKit
import AVFoundation
import AudioKit

class ViewController: UIViewController {

    var sound : AVAudioPlayer! = nil
    let soundFileURL_01 = Bundle.main.url(forResource: "23_Dripping_Tap", withExtension: "aif")
    let soundFileURL_02 = Bundle.main.url(forResource: "15", withExtension: "wav")
    var audiofile : AKAUdioFile?
    var audioKitSound : AKAudioPlayer?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

