//
//  SignInViewController.swift
//  Karousel
//
//  Created by Eric Eriksson on 10/27/14, with some help from hoydb
//  Copyright (c) 2014 Eric Eriksson. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {

    @IBOutlet weak var signInButton: UIButton!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
//        NSNotificationCenter.defaultCenter().addObserver(self, selector: "kbShown:", name: UIKeyboardWillShowNotification, object: nil)
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onBackBtn(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
//    @IBAction func validateFields() {
//        var alertView = UIAlertView(title: "Email Required", message: "Please enter your email address", delegate: self, cancelButtonTitle: "OK")
//        var signingInView = UIAlertView(title: "Signing in...", message: "", delegate: "", cancelButtonTitle: "")
//        if (emailField.text == "" || emailField.text == "Email" || passField.text == "" ) {
//            println("disabled")
//            alertView.show()
//        } else {
//            println("enabld")
//            signingInView.show()
//            delay(2, { () -> () in
//            self.performSegueWithIdentifier("welcomeSegue", sender: self)
//            })
//        }
//    }
    
    // pseudo form field validation
    func processInput(email: String, password: String) {
        
        var email = email.lowercaseString
        var password = password.lowercaseString
        if (email == "e" && password == "e") {
            println("correct")
            performSegueWithIdentifier("welcomeSegue", sender: self)
            
            
        } else {
            println("Incorrect")
            
            let signInFailedAlert = UIAlertView()
            signInFailedAlert.title = "Sign In Failed"
            signInFailedAlert.message = "Incorrect email or password."
            signInFailedAlert.addButtonWithTitle("Ok")
            signInFailedAlert.show()
        }
    }
    
    
    
    // handle sign in request
    @IBAction func onSignInTap(sender: AnyObject) {
        
        // handle blank email field
        if (emailField.text == "") {
            let noEmailAlert = UIAlertView()
            noEmailAlert.title = "Email Required"
            noEmailAlert.message = "Please enter your email address."
            noEmailAlert.addButtonWithTitle("Ok")
            noEmailAlert.show()
            
            // handle blank pw field
        } else if (passField.text == "") {
            let noPassAlert = UIAlertView()
            noPassAlert.title = "Password Required"
            noPassAlert.message = "Please enter your password."
            noPassAlert.addButtonWithTitle("Ok")
            noPassAlert.show()
            
            // handle email and pw validation
        } else {
            let validatingSignInCredsAlert = UIAlertView()
            validatingSignInCredsAlert.title = "Signing in…"
            validatingSignInCredsAlert.show()
            
            delay(2, { () -> () in
                // core of pseudo validation in processInput
                self.processInput(self.emailField.text, password: self.passField.text)
                validatingSignInCredsAlert.dismissWithClickedButtonIndex(0, animated: true)

            })
            
        }
        
    }
    
    
//    @IBAction func onSignInButton(sender: AnyObject) {
//        validateFields()
//    }
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
