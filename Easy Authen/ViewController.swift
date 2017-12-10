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
    var showResultString:String = ""
    
    var dicMemberString = ["user1":"1234","user2":"1234","user3":"1234"]
    
    
    
    @IBOutlet weak var userTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var showResult: UILabel!
    
    
    
    
    @IBAction func loginAction(_ sender: Any) {
        //Get Value from textfield
        userString = userTextField.text!//! not empty
        passString = passwordTextField.text!//command + b = build new or compiler
        
        //show log
        print("login here userId -> \(userString) , pass \(passString)" )
        
        
        
        showResultString = "Authen Fail"
        
        //print("Result ==> \(dicMemberString[userString]!)")
        
        /*
         if var chkpass = dicMemberString[userString] {
             if( passString == chkpass ){
                showResult.text = displayStrings[3]
             }else{
                showResult.text = displayStrings[2]
             }
         }
         */
        
        
        if (dicMemberString[userString] != nil){
            //pass
            let chkpass = dicMemberString[userString]!
            
            print("pass \(chkpass)")
            
            if( passString == chkpass ){
                showResult.text = displayStrings[3]
            }else{
                showResult.text = displayStrings[2]
            }
            
            
        }else{
            //not pass
            showResult.text = displayStrings[1]
        }
        
        
        //Chk User
        /*
        if(userString == "" && passString == ""){
            print(displayStrings[0])
            showResultString = displayStrings[0]
        }
        else if(userString == ""){
            print(displayStrings[1])
            showResultString = displayStrings[1]
        }
        else if(passString == ""){
            print(displayStrings[2])
            showResultString = displayStrings[2]
        }
        else if(userString == "admin" && passString == "admin" ){
            print(displayStrings[3] )
            showResultString = displayStrings[3]
        }*/
                
        //Setting display result
        //showResult.text = showResultString
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

