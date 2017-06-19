//
//  RegisterPageViewController.swift
//  ari
//
//  Created by AAA on 6/16/17.
//  Copyright © 2017 dylanhelps.com. All rights reserved.
//

import UIKit



class RegisterPageViewController: UIViewController {

    @IBOutlet weak var registerEmailTxt: UITextField!
    
    
    @IBOutlet weak var registerPasswordTxt: UITextField!
    
    @IBOutlet weak var registerRepeatPwdTxt: UITextField!
    
    @IBAction func registerButtonTapped(sender: Any) {
        let userEmail = (registerEmailTxt.text);
        let userPassword = registerPasswordTxt.text;
        let userRepeat = registerRepeatPwdTxt.text;
        if((userEmail?.isEmpty)! || (userPassword?.isEmpty)! || (userRepeat?.isEmpty)!){
            dispalayAlert(message: "Please enter all required fields");
            return;
        }
        
        if (userPassword != userRepeat){
            dispalayAlert(message: "Please ensure passwords are matching");
            return;
        }
        
        // store user data
        UserDefaults.standard.set(userEmail, forKey:"userEmail");
        UserDefaults.standard.set(userPassword,forKey:"userPassword");
        UserDefaults.standard.synchronize();
        
        var confirmAlert = UIAlertController(title:"confirmed",
                                             message:"Subscription successful. Thank you",
                                             preferredStyle: UIAlertControllerStyle.alert);
        
        let action = UIAlertAction(title:"OK",style: UIAlertActionStyle.default){
            action in self.dismiss(animated: true,completion: nil);
        }
        
        confirmAlert.addAction(action);
        self.present(confirmAlert,animated: true,completion: nil);
    }
    
    func dispalayAlert(message:String){
        var alert = UIAlertController(title: "Validator message", message: message,
                                      preferredStyle: UIAlertControllerStyle.alert);
        
        let okAtion = UIAlertAction(title:"OK", style:UIAlertActionStyle.default,handler:nil);
        
        alert.addAction(okAtion);
        
        self.present(alert,animated:true,completion:nil) ;
    }
    
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
