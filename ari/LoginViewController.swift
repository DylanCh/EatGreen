//
//  LoginViewController.swift
//  ari
//
//  Created by AAA on 6/16/17.
//  Copyright © 2017 dylanhelps.com. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBAction func loginButtonTapped(_ sender: Any) {
        let userEmail = loginEmailTxt.text
        let userPassword = loginPaswordTxt.text
        let userEmailStored = UserDefaults.standard.string(forKey: "userEmail");
        let userPasswordStored = UserDefaults.standard.string(forKey: "userPassword");
        if (userEmail == userEmailStored){
            if(userPassword == userPasswordStored){
                UserDefaults.standard.set(true,forKey: "isUserLoggedin");
                UserDefaults.standard.synchronize()
                self.dismiss(animated: true,completion:nil);
                
            }
            else{}
        }
        else{}
    }
    @IBOutlet weak var loginPaswordTxt: UITextField!
    @IBOutlet weak var loginEmailTxt: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

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
