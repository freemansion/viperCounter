//
//  AppDelegate.swift
//  SBViperCount
//
//  Created by Stas Baranovskiy on 3/18/15.
//  Copyright (c) 2015 Stas Baranovskiy. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    let appDependencies = AppDependencies()

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        self.window = UIWindow(frame: UIScreen.mainScreen().bounds)
        
        self.appDependencies.installRootViewControllerIntoWindow(self.window)
        
        self.window?.makeKeyAndVisible()
        return true
    }




}

