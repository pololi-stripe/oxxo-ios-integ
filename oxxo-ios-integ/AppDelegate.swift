//
//  AppDelegate.swift
//  oxxo-ios-integ
//
//  Created by Polo Li on 7/6/20.
//  Copyright © 2020 Polo. All rights reserved.
//

import UIKit
import Stripe

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        #warning("Please user your own Stripe Publishable key below")
        Stripe.setDefaultPublishableKey("pk_test_51Grp6yFhTBnnozp8HIEBfJEwKh3u6KTwObeBd9rwFaXGJCl8Q8TSiMaIC5S2Btkc0ckxy6ss6MuqnnPriz1Dwriq00nsIqgAUc")
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

