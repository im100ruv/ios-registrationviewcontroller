//
//  ViewController.swift
//  registrationViewcontroller
//
//  Created by Reshmi on 11/01/18.
//  Copyright © 2018 Reshmi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var _uname: UITextField!
    @IBOutlet weak var _passwd: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onSignIn(_ sender: Any) {
        let username = _uname.text!
        let password = _passwd.text!
        
        let welcomeVC = self.storyboard?.instantiateViewController(withIdentifier: "WelcomeViewController") as! WelcomeViewController
        if(username=="admin" && password=="admin"){
            welcomeVC.user = username
            self.present(welcomeVC, animated: true, completion: nil)
        } else {
            let invalidUserAlert = UIAlertController(title: "Warning", message: "User does not exist!", preferredStyle: UIAlertControllerStyle.actionSheet)
            invalidUserAlert.addAction(UIAlertAction(title : "Enter a valid user name or password", style : UIAlertActionStyle.default, handler : {(action) in
                invalidUserAlert.dismiss(animated: true, completion: nil)
            }))
            self.present(invalidUserAlert, animated: true, completion: nil)
        }
        
    }
    
}

