//
//  ViewController.swift
//  Autolayout
//
//  Created by Anthony Rosario on 11/8/15.
//  Copyright © 2015 Anthony Rosario. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var loginField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var passwordLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    var secure = false { didSet { updateUI()} }
    
    private func updateUI() {
        passwordField.secureTextEntry = secure
        passwordLabel.text = secure ? "Secured Password" : "Password"
    }

    @IBAction func login() {
        
    }
    
    @IBAction func toggleSecurity() {
        secure = !secure
    }
}

