//
//  ViewController.swift
//  firstApp
//
//  Created by Anita Shen on 17/07/2017.
//  Copyright © 2017 Anita Shen. All rights reserved.
//

import UIKit

struct defaultsKeys{
    static let keyOne = "Anita Shen"
    
}
class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var textInputOutlet: UITextField!
    
    
    let defaults = UserDefaults.standard
    
    var name: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        nameLabel.text = "Type your name"
        self.textInputOutlet.delegate = self as? UITextFieldDelegate
        name = defaults.string(forKey: defaultsKeys.keyOne)
        nameLabel.text = name
        
    }
    

    @IBAction func textInput(_ sender: UITextField) {
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
       self.view.endEditing(true)
        name = textInputOutlet.text!
        nameLabel.text = name
        defaults.setValue(name, forKey: defaultsKeys.keyOne)
        defaults.synchronize()
        return false
    }
    
    @IBAction func slider(_ sender: UISlider) {
        print(sender.value)
    }
}

