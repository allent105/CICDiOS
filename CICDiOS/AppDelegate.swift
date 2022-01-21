//
//  AppDelegate.swift
//  CICDiOS
//
//  Created by Allen Theobald on 1/20/22.
//

import UIKit
import AppCenter
import AppCenterAnalytics
import AppCenterCrashes

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window:UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        self.window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = UIStoryboard(name: "Main", bundle: nil).instantiateInitialViewController()
        window?.makeKeyAndVisible()

        
        AppCenter.start(withAppSecret: "47c7f15e-7694-41ee-a634-1bc4e1933ad1", services:[
          Analytics.self,
          Crashes.self
        ])
        
        //AppCenter.logLevel = .verbose
        
        return true
    }
    
}
