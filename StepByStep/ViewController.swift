//
//  ViewController.swift
//  StepByStep
//
//  Created by wander on 2021/11/22.
//  Copyright © 2021 cn.wanderros. All rights reserved.
//


import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.orange
        navigationItem.title = "ZLaunchAd"
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now()+20) {
            NotificationCenter.default.post(name: NSNotification.Name.init("myNotification"), object: nil)
            print("Hello")
        }
    }
    
}
