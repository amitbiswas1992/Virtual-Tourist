//
//  AppDelegate.swift
//  Virtual Tourist
//
//  Created by Amit Biswas on 5/14/20.
//  Copyright © 2020 Amit Biswas. All rights reserved.
//

import UIKit
import CoreData

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    let dataController = DataController(modelName: "VirtualTourist")

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
       
        let navigationController = window?.rootViewController as! UINavigationController
        let mapview = navigationController.topViewController as! MapViewController
        mapview.dataController = (UIApplication.shared.delegate as? AppDelegate)?.dataController
          
        dataController.load()
       
        return true
    }


    func applicationDidEnterBackground(_ application: UIApplication) {

        saveViewContext()
    }

    func applicationWillTerminate(_ application: UIApplication) {
     
        saveViewContext()
    }

    func saveViewContext() {
        try? dataController.viewContext.save()
    }
}


