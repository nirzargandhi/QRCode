//
//  AppDelegate.swift
//  QRCode
//
//  Created by Nirzar Gandhi on 05/03/25.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    // MARK: - Properties
    internal var window: UIWindow?
    var navController : UINavigationController?
    
    
    // MARK: - RootView Setup
    func setRootViewController(rootVC: UIViewController) {
        
        self.navController = UINavigationController(rootViewController: rootVC)
        self.window?.rootViewController = self.navController
    }
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        // Set Root Controller
        self.window = UIWindow(frame: UIScreen.main.bounds)
        self.window?.backgroundColor = .white
        let qrCodeVC = GetStoryBoard(identifier: "QRCodeVC", storyBoardName: Constants.Storyboard.Main) as! QRCodeVC
        self.setRootViewController(rootVC: qrCodeVC)
        
        self.window?.makeKeyAndVisible()
        
        return true
    }
}

