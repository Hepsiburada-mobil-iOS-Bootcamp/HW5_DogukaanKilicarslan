//
//  AppDelegate.swift
//  E-Store
//
//  Created by DarkBringer on 19.10.2021.
//

import UIKit
import Firebase
@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        FirebaseApp.configure()
        
        self.window = UIWindow()
        let mainView = MainTabBarBuilder.build()
        
        window?.rootViewController = mainView
        window?.makeKeyAndVisible()
        
        return true
    }

}

