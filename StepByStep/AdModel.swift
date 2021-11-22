//
//  AdModel.swift
//  StepByStep
//
//  Created by wander on 2021/11/22.
//  Copyright © 2021 cn.wanderros. All rights reserved.
//

import SwiftUI
import ZLaunchAd
struct AdModel {
    
    var imgUrl: String!
    var duration: Int!
    var width: CGFloat!
    var height: CGFloat!
    var animationType: ZLaunchAnimationType!
    var skipBtnType: ZLaunchSkipButtonType!
    
    
    init(_ dic: Dictionary<String, Any>) {
        imgUrl = dic["imgUrl"] as? String
        duration = dic["duration"] as? Int
        width = dic["width"] as? CGFloat
        height = dic["height"] as? CGFloat
        
        let btnType = dic["skipBtnType"] as! Int
        skipBtnType = ZLaunchSkipButtonType(rawValue: btnType)!
        
        let animationType = dic["animationType"] as! Int
        self.animationType = ZLaunchAnimationType(rawValue: animationType)!
    }
    
}
