//
//  ViewController.swift
//  Easy Authen
//
//  Created by apiwat wattanasura on 6/13/17.
//  Copyright © 2017 SNRU. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Implicit
    var strUser: String?
    var strPassword: String?
    let dicUser = ["master": "1234" ,"doramon": "5678", "nobita": "1234"]
    
   
    
    
    
    @IBOutlet weak var userTextFieid: UITextField!
    
    @IBOutlet weak var passwordTextFieid: UITextField!
    
    @IBOutlet weak var messageLabel: UILabel!
    
    @IBAction func loginButton(_ sender: Any) {
        
        messageLabel.text = ""
        
        //Get Value From TextField
        strUser = userTextFieid.text
        strPassword = passwordTextFieid.text
        
         //Show User & Pass on Console
        print("User ==>\(strUser!)")
        print("Passwoed ==>\(strPassword!)")
        
        //Find Count String 
        let intUser = strUser?.characters.count
        let intPass = strPassword?.characters.count
        
        print("intUser ==>\(intUser!)")
        print("intPass ==>\(intPass!)")
        
        //Call checkSpace
        if checkSpace(myString: strUser!) && checkSpace(myString: strPassword!) {
            
            //No Space
            print("No Space")
            showMessage(strMessage: "")
            checkUserAndPass(strUser: strUser!, strPassword: strPassword!)
            
            
        }else {
            print("Have User")
            showMessage(strMessage: "Please Fill User")
        }
        
        
        
        
        
    } //loginButton

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    } // Main Method
    
    
    func checkUserAndPass(strUser: String, strPassword: String) -> Void {
        
        //Check User
        if let testUser = dicUser[strUser] {
            print("textUser ==> \(testUser)")
            if strPassword == testUser{
                //Password True
                showMessage(strMessage: "Welcome to SNRU")
            }else {
                //Password False
                showMessage(strMessage: "Plasde Try Again Password False")
            }
        } else{
            print("test nil")
            showMessage(strMessage: "No " + strUser + " in my Database")
        }
        
        
    }
    
    func showMessage(strMessage: String) ->  Void{
      messageLabel.text = strMessage
    }
    

    
    func checkSpace(myString: String) -> Bool {
        let intString = myString.characters.count
        var result: Bool = true
        
        if intString == 0 {
         //Have Space
            result = false
        }
        
        return result
        
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    } //didRecive
    
    


} //Main Class

