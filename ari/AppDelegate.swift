//
//  AppDelegate.swift
//  ari
//
//  Created by AAA on 6/10/17.
//  Copyright © 2017 dylanhelps.com. All rights reserved.
//

import UIKit
import PubNub

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate, PNObjectEventListener {

    var window: UIWindow?

    var client:PubNub!
    
    

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        let configuration = PNConfiguration(publishKey: Consts.PUBLISH_KEY,
                                            subscribeKey: Consts.SUBSCRIBER_KEY);
        self.client = PubNub.clientWithConfiguration(configuration);
        self.client.addListener(self);
        self.client.subscribeToChannels(["my_channel1","my_channel2"], withPresence: false);
        
        return true
    }
    
//    func client(_ client: PubNub, didReceiveMessage message: PNMessageResult) {
//        
//        // Handle new message stored in message.data.message
//        if message.data.channel != message.data.subscription {
//            
//            // Message has been received on channel group stored in message.data.subscription.
//        }
//        else {
//            
//            // Message has been received on channel stored in message.data.channel.
//        }
//        
//        print("Received message: \(message.data.message) on channel \(message.data.channel) " +
//            "at \(message.data.timetoken)")
//    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

