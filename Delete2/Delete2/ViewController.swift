//
//  ViewController.swift
//  Delete2
//
//  Created by Cluster 5 on 7/30/17.
//  Copyright © 2017 com.DiegoCalderon. All rights reserved.
//
/Users/cluster5/Desktop/Delete2
import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func ShowPopup(_ sender: AnyObject) {
        let PopOverVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "sbpopupID1") as! PopupViewController
        self.addChildViewController(PopOverVC)
        PopOverVC.view.frame = self.view.frame
        self.view.addSubview(PopOverVC.view)
        PopOverVC.didMove(toParentViewController: self)
    }
    
    @IBAction func ShowPopup2(_ sender: AnyObject) {
        let PopOverVC2 = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "sbpopupID2") as! PopupViewController2
        self.addChildViewController(PopOverVC2)
        PopOverVC2.view.frame = self.view.frame
        self.view.addSubview(PopOverVC2.view)
        PopOverVC2.didMove(toParentViewController: self)
    }
    
    @IBAction func ShowPopup3(_ sender: Any) {
        let PopOverVC3 = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "sbpopupID3") as! PopupViewController3
        self.addChildViewController(PopOverVC3)
        PopOverVC3.view.frame = self.view.frame
        self.view.addSubview(PopOverVC3.view)
        PopOverVC3.didMove(toParentViewController: self)

    }

}

