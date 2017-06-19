//
//  SearchPageViewController.swift
//  ari
//
//  Created by AAA on 6/17/17.
//  Copyright © 2017 dylanhelps.com. All rights reserved.
//

import UIKit

class SearchPageViewController: UIViewController {

    @IBOutlet weak var searchBar: UITextField!
    
    
    @IBOutlet weak var webView1: UIWebView!
    @IBAction func searchBtnTapped(_ sender: Any) {
        let near = searchBar.text?.replacingOccurrences(of: " ", with: "+")
        let url = "http://sample-env-2.rw7humkmrg.us-east-1.elasticbeanstalk.com/listview?near="+near!
        UIWebView.loadRequest(webView1)(NSURLRequest(url: NSURL(string: url)! as URL) as URLRequest)
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
