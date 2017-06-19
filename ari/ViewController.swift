//
//  ViewController.swift
//  ari
//
//  Created by AAA on 6/10/17.
//  Copyright © 2017 dylanhelps.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewDidAppear(_ animated: Bool) {
        self.performSegue(withIdentifier: "subscribeView", sender: self)
    }
}

