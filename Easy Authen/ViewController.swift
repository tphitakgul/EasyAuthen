//
//  ViewController.swift
//  Easy Authen
//
//  Created by Apple on 12/9/2560 BE.
//  Copyright © 2560 Boss. All rights reserved.
//


import UIKit

class ViewController: UIViewController {

    var userString:String = ""
    var passString:String = ""
    var displayStrings = ["Have Space Please Fill All Blank","User False","Pass Fail","Welcome Member"]
    
    
    @IBOutlet weak var userTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBAction func loginAction(_ sender: Any) {
        //Get Value from textfield
        userString = userTextField.text!//! not empty
        passString = passwordTextField.text!//command + b = build new or compiler
        
        //show log
        print("login here userId -> \(userString) , pass \(passString)" );
        
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

