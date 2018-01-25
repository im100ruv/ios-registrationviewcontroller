//
//  WelcomeViewController.swift
//  registrationViewcontroller
//
//  Created by Reshmi on 11/01/18.
//  Copyright © 2018 Reshmi. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var _user: UILabel!
    
    var user : String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if(user != nil){
            _user.text = "\(user!)"
        } else {
            _user.text = "User"
        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
