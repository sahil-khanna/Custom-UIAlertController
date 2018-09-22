//
//  ViewController.swift
//  CustomAlerts
//
//  Created by sahil.khanna on 22/09/18.
//  Copyright © 2018 Example. All rights reserved.
//

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
    
    @IBAction func oneButtonAlertTapped() {
        let utils = Utils();
        
        let button = AlertButton(title: "OK", action: {
            print("OK clicked");
        }, titleColor: UIColor.blue, backgroundColor: UIColor.cyan);
        
        let alertPayload = AlertPayload(title: "One Button Alert", titleColor: UIColor.red, message: "This custom alert has just one action button", messageColor: UIColor.green, buttons: [button], backgroundColor: UIColor.black)
        
        utils.showAlert(payload: alertPayload, parentViewController: self);
    }
    
    @IBAction func twoButtonAlertTapped() {
        let utils = Utils();
        
        let button1 = AlertButton(title: "Yes", action: {
            print("Yes clicked");
        }, titleColor: UIColor.red, backgroundColor: UIColor.clear);
        
        let button2 = AlertButton(title: "No", action: {
            print("No clicked");
        }, titleColor: UIColor.lightGray, backgroundColor: UIColor.clear);
        
        let alertPayload = AlertPayload(title: "Two Button Alert", titleColor: UIColor.red, message: "Are you sure you want to delete?", messageColor: UIColor.green, buttons: [button1, button2], backgroundColor: UIColor.yellow)
        
        utils.showAlert(payload: alertPayload, parentViewController: self);
    }
}

