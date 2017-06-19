//
//  SearchTableViewController.swift
//  ari
//
//  Created by AAA on 6/17/17.
//  Copyright © 2017 dylanhelps.com. All rights reserved.
//

import UIKit

class SearchTableViewController: UITableViewController {
    var TableData:Array< String > = Array < String >();
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
        let url = "https://api.foursquare.com/v2/venues/search?v=20161016&near=";
        get_data_from_url(url: url+"New+York&query=restaurant&"+Consts.FOURSQUARE_CLIENT_ID + "&"+Consts.FOURSQUARE_CLIENT_SECRET);
        
    }

    func get_data_from_url(url:String)
    {
        let httpMethod = "GET"
        let timeout = 15
        let url = URL(string: url)
//        let urlRequest = NSMutableURLRequest(url: url! as URL); //NSMutableURLRequest(URL: url!, cachePolicy: .ReloadIgnoringLocalAndRemoteCacheData,timeoutInterval: 15.0)
//        
//        let queue = OperationQueue()
//        NSURLConnection.sendAsynchronousRequest(
//            urlRequest as URLRequest,
//            queue: queue,
//            completionHandler: {(response: URLResponse!, data: NSData!, error: NSError!)-> Void in
//                if data.length > 0 && error == nil{
//                    self.extract_json(data!)
//                }else if data.length == 0 && error == nil{
//                    println("Nothing was downloaded")
//                } else if error != nil{
//                    println("Error happened = \(error)")
//                }
//        }
//        )
        let request = URLRequest(url: url!)
        NSURLConnection.sendAsynchronousRequest(request, queue: OperationQueue.main) {(response, data, error) in
            print(NSString(data: data!, encoding: String.Encoding.utf8.rawValue))
        }
    }
    
    func extract_json(jsonData:NSData){
        var parseError: NSError?
        var names = [String]()
//        let json: AnyObject? = JSONSerialization.JSONObjectWithData(jsonData as Data, options: nil);
//        if (parseError == nil)
//        {
//            
//        }
//        do{
//            if let data = jsonData,
//            let json = try JSONSerialization.jsonObject(with: data) as? [String:Any],
//            let response  = json["response"]
//            
//        }
//        let json =
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }

    
//     override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
//     let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath as IndexPath) as! UITableViewCell
//     cell.textLabel?.text = TableData[indexPath.row]
//     return cell
//     }
 

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
