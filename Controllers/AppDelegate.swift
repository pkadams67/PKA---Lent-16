//  See LICENSE folder for this project’s licensing information.

import UIKit
import Fabric
import Crashlytics

@UIApplicationMain

class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        UINavigationBar.appearance().barTintColor        = UIColor(red: 0.141, green: 0.0196, blue: 0.18, alpha: 1) // Hex #24052E
        UINavigationBar.appearance().titleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.white]
        UIBarButtonItem.appearance().tintColor           = UIColor(red: 0.141, green: 0.0196, blue: 0.18, alpha: 1) // Hex #24052E
        UINavigationBar.appearance().tintColor           = UIColor.white
        Fabric.sharedSDK().debug = true
        Fabric.with([Crashlytics.self])
        // TODO: Move this to where you establish a user session
        // self.logUser()
        return true
    }
    
    func logUser() {
        // TODO: Use the current user's information
        // You can call any combination of these three methods
        Crashlytics.sharedInstance().setUserEmail("user@fabric.io")
        Crashlytics.sharedInstance().setUserIdentifier("12345")
        Crashlytics.sharedInstance().setUserName("Test User")
    }
    
    func applicationWillResignActive(_ application: UIApplication) {
    }
    
    func applicationDidEnterBackground(_ application: UIApplication) {
    }
    
    func applicationWillEnterForeground(_ application: UIApplication) {
    }
    
    func applicationDidBecomeActive(_ application: UIApplication) {
    }
    
    func applicationWillTerminate(_ application: UIApplication) {
    }
}