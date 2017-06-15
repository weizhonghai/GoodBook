//
//  AppDelegate.swift
//  GoodBook
//
//  Created by 海神 on 2017/6/9.
//  Copyright © 2017年 海神. All rights reserved.
//

import UIKit
import LeanCloud
@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        LeanCloud.initialize(applicationID: "Q5LWyaBDuTAbM38luTXGCiVX-gzGzoHsz", applicationKey: "zf2RtOtWrGONcmF0hK3qxY4p")
        
        self.window = UIWindow.init(frame: CGRect.init(x: 0, y: 0, width: SCREEN_WIDTH, height: SCREEN_HEIGHT))
        let tabBarController = UITabBarController();

        let rankVC = UINavigationController.init(rootViewController: rankViewController())
        
        let searVC = UINavigationController.init(rootViewController: searchViewController())
        
        let pushVC = UINavigationController.init(rootViewController: pushViewController())
        
        let circleVC = UINavigationController.init(rootViewController: cireleViewController())
        
        let moreVC = UINavigationController.init(rootViewController: moreViewController())
        
        tabBarController.viewControllers = [rankVC,searVC,pushVC,circleVC,moreVC]
        let tabbarItem1 = UITabBarItem.init(title: "排行榜", image: UIImage.init(named: "bio"), selectedImage: UIImage.init(named: "bio_red"))
        let tabbarItem2 = UITabBarItem.init(title: "发现", image: UIImage.init(named: "timer 2"), selectedImage: UIImage.init(named: "timer 2"))
        let tabbaritem3 = UITabBarItem.init(title: "", image: UIImage.init(named: "pencil"), selectedImage: UIImage.init(named: "pencil_red"))
        let tabbarItme4 = UITabBarItem.init(title: "圈子", image: UIImage.init(named: "users two-2"), selectedImage: UIImage.init(named: "users two-2_red"))
        let tabbarItem5 = UITabBarItem.init(title: "更多", image: UIImage.init(named: "more"), selectedImage: UIImage.init(named: "more_red"))
        
        
        rankVC.tabBarItem = tabbarItem1
        searVC.tabBarItem = tabbarItem2
        pushVC.tabBarItem = tabbaritem3
        circleVC.tabBarItem = tabbarItme4
        moreVC.tabBarItem = tabbarItem5
        self.window?.rootViewController = tabBarController
        
        
        
        return true
    }

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

