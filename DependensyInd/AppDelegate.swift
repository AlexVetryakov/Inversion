//
//  AppDelegate.swift
//  DependensyInd
//
//  Created by Developer on 2/18/20.
//  Copyright © 2020 AlexanderVetryakov. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        let locationService = LocationService()
        let mainViewController = MainViewController(locationService: locationService)
        mainViewController.locationServiceFromProperty = locationService
        mainViewController.addLocationService(locationService: locationService)
        let navigationController = UINavigationController(rootViewController: mainViewController)

        window = UIWindow(frame: UIScreen.main.bounds)
        window?.backgroundColor = UIColor.white
        window?.rootViewController = navigationController

        window?.makeKeyAndVisible()

        return true
    }
}

