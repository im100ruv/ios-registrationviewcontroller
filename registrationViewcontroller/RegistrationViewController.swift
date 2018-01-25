//
//  RegistrationViewController.swift
//  registrationViewcontroller
//
//  Created by im100ruv on 12/01/18.
//  Copyright © 2018 Reshmi. All rights reserved.
//

import UIKit

class RegistrationViewController: UIViewController {

    @IBOutlet weak var _uname: UITextField!
    @IBOutlet weak var _passwd: UITextField!
    @IBOutlet weak var _cnfPasswd: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func onSignUp(_ sender: Any) {
        let username = _uname.text!
        let password = _passwd.text!
        let cnfPassword = _cnfPasswd.text!
        
        let welcomeVC = self.storyboard?.instantiateViewController(withIdentifier: "WelcomeViewController") as! WelcomeViewController
        if(cnfPassword == password){
            welcomeVC.user = username
            self.present(welcomeVC, animated: true, completion: nil)
        } else {
            let invalidUserAlert = UIAlertController(title: "Warning", message: "Passwords did not match!", preferredStyle: UIAlertControllerStyle.actionSheet)
            invalidUserAlert.addAction(UIAlertAction(title : "Enter a correct password!", style : UIAlertActionStyle.default, handler : {(action) in
                invalidUserAlert.dismiss(animated: true, completion: nil)
            }))
            self.present(invalidUserAlert, animated: true, completion: nil)
        }
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
