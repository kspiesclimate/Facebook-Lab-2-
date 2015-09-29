//
//  LoginViewController.swift
//  Facebook
//
//  Created by Katie Spies on 9/24/15.
//  Copyright (c) 2015 codepath. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    var initialY: CGFloat!
    
    @IBOutlet var viewContainer: UIView!
    @IBOutlet weak var loginButtonOutlet: UIButton!
    @IBAction func loginButton(sender: AnyObject) {
    }
    @IBOutlet weak var logginginImage: UIImageView!
    @IBOutlet weak var disabledloginImage: UIImageView!
    @IBOutlet weak var loginImage: UIImageView!
    @IBOutlet weak var logoImage: UIImageView!
    @IBOutlet weak var formImage: UIImageView!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var emailField: UITextField!
    
    @IBAction func emailEditingChanged(sender: AnyObject) {
        var email = emailField.text
        println("email is /(email)")
        if email == "" {
            loginButtonOutlet.enabled = false
            loginImage.hidden = true
        }
        else {
            loginButtonOutlet.enabled = true
            loginImage.hidden = false
        }
    }
    @IBAction func passwordEditingChanged(sender: AnyObject) {
        var password = passwordField.text
        println("password is /(password)")
        
        if password == "" {
            loginButtonOutlet.enabled = false
            loginImage.hidden = true
        }
        else {
            loginButtonOutlet.enabled = true
            loginImage.hidden = false
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initialY = viewContainer.frame.origin.y
        println("initialY is /(initialY)")
        
        
        loginImage.hidden = true
        logginginImage.hidden = true
        
        //register keyboard events
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillShow:", name: UIKeyboardWillShowNotification, object: nil)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillHide:", name: UIKeyboardWillHideNotification, object: nil)
        
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func keyboardWillShow(notification: NSNotification!) {
        println("keyboard showing")
        
        self.viewContainer.frame.origin.y = -100
    }
    
    func keyboardWillHide(notification: NSNotification!) {
        println("keyboard not showing")
        self.viewContainer.frame.origin.y = initialY
        
    }
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
