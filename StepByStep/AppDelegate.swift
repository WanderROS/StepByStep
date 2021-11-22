//
//  AppDelegate.swift
//  StepByStep
//
//  Created by wander on 2021/11/22.
//  Copyright © 2021 cn.wanderros. All rights reserved.
//

import UIKit
import ZLaunchAd
@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    let Z_SCREEN_WIDTH = UIScreen.main.bounds.size.width
    let Z_SCREEN_HEIGHT = UIScreen.main.bounds.size.height
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow.init(frame: UIScreen.main.bounds)
        window?.backgroundColor = UIColor.gray
        let homeVC = ViewController()
        let nav = UINavigationController(rootViewController: homeVC)
        window?.rootViewController = nav
        window?.makeKeyAndVisible()
        launchExample04(homeVC)
        // Override point for customization after application launch.
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


extension AppDelegate {
    
    /// 本地图片
    func launchExample01(_ homeVC: UIViewController) {
        let adView = ZLaunchAd.create(showEnterForeground: true)
        let imageResource = ZLaunchAdImageResourceConfigure()
        imageResource.imageNameOrImageURL = "unnamed.jpeg"
        imageResource.imageDuration = 5
        imageResource.imageFrame = UIScreen.main.bounds
        adView.setImageResource(imageResource, action: {
            let vc = UIViewController()
            vc.view.backgroundColor = UIColor.yellow
            homeVC.navigationController?.pushViewController(vc, animated: true)
        })
    }
    /// 加载网络图片
    func launchExample02(_ homeVC: UIViewController) {
        let adView = ZLaunchAd.create(waitTime: 5)
        request { model in
            let buttonConfig = ZLaunchSkipButtonConfig()
            buttonConfig.skipBtnType = model.skipBtnType
            let imageResource = ZLaunchAdImageResourceConfigure()
            imageResource.imageNameOrImageURL = model.imgUrl
            imageResource.animationType = model.animationType
            imageResource.imageDuration = model.duration
            imageResource.imageFrame = CGRect(x: 0, y: 0, width: self.Z_SCREEN_WIDTH, height: self.Z_SCREEN_WIDTH*model.height/model.width)
            /// 设置图片、跳过按钮
            adView.setImageResource(imageResource, buttonConfig: buttonConfig, action: {
                let vc = UIViewController()
                vc.view.backgroundColor = UIColor.yellow
                homeVC.navigationController?.pushViewController(vc, animated: true)
            })
        }
    }
    
    /// 自定义通知控制启动页广告出现
    /// 如果通知控制显示不同的广告图片，网络请求需要写在`adNetRequest`闭包中
    /// 如果显示的是同一张图片，网络请求不需要写在闭包中，避免重复请求
    func launchExample03(_ homeVC: UIViewController) {
        ZLaunchAd.create(customNotificationName: "myNotification") { (adView) in
            self.request { model in
                let buttonConfig = ZLaunchSkipButtonConfig()
                buttonConfig.skipBtnType = model.skipBtnType
                let imageResource = ZLaunchAdImageResourceConfigure()
                imageResource.imageNameOrImageURL = model.imgUrl
                imageResource.animationType = model.animationType
                imageResource.imageDuration = model.duration
                imageResource.imageFrame = CGRect(x: 0, y: 0, width: self.Z_SCREEN_WIDTH, height: self.Z_SCREEN_WIDTH*model.height/model.width)
                
                adView.setImageResource(imageResource, buttonConfig: buttonConfig, action: {
                    let vc = UIViewController()
                    vc.view.backgroundColor = UIColor.yellow
                    homeVC.navigationController?.pushViewController(vc, animated: true)
                })
            }
        }
    }
    
    /// 进入前台时显示
    /// `showEnterForeground`需要设置为`true`，`timeForWillEnterForeground`为app进入后台到再次进入前台的时间
    /// 如果进入前台时加载不同的广告图片，网络请求需要写在`adNetRequest`闭包中
    /// 如果显示的是同一张图片，网络请求不需要写在闭包中，避免重复请求
    func launchExample04(_ homeVC: UIViewController) {
        ZLaunchAd.create(showEnterForeground: true, timeForWillEnterForeground: 10, adNetRequest: { adView in
            self.request { model in
                let buttonConfig = ZLaunchSkipButtonConfig()
                buttonConfig.skipBtnType = model.skipBtnType
                let imageResource = ZLaunchAdImageResourceConfigure()
                imageResource.imageNameOrImageURL = model.imgUrl
                imageResource.animationType = model.animationType
                imageResource.imageDuration = model.duration
                imageResource.imageFrame = CGRect(x: 0, y: 0, width: self.Z_SCREEN_WIDTH, height: self.Z_SCREEN_HEIGHT-75)
                
                adView.setImageResource(imageResource, buttonConfig: buttonConfig, action: {
                    let vc = UIViewController()
                    vc.view.backgroundColor = UIColor.red
                    homeVC.navigationController?.pushViewController(vc, animated: true)
                })
            }
        }).endOfCountDown {
            print("倒计时结束了-----")
        }
    }
}

//MARK: - 模拟请求数据，此处解析json文件
extension AppDelegate {
    func request(_ completion: @escaping (AdModel)->()) -> Void {
        DispatchQueue.main.asyncAfter(deadline: .now()+1) {
            if let path = Bundle.main.path(forResource: "data", ofType: "json") {
                let url = URL(fileURLWithPath: path)
                do {
                    let data = try Data(contentsOf: url)
                    let json = try JSONSerialization.jsonObject(with: data, options: .allowFragments)
                    if let dict = json as? [String: Any],
                        let dataArray = dict["data"] as? [[String: Any]] {
                        /// 随机显示
                        let idx = Int(arc4random()) % dataArray.count
                        let model = AdModel(dataArray[idx])
                        completion(model)
                    }
                } catch  {
                    print(error)
                }
            }
        }
    }
}
