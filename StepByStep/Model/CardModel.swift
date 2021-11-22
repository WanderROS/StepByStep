//
//  CardModel.swift
//  StepByStep
//
//  Created by wander on 2021/11/22.
//  Copyright © 2021 cn.wanderros. All rights reserved.
//

import SwiftUI

struct CardModel: Identifiable{
    let id = UUID()
    var title: String
    var headline: String
    var imageName: String
    var callToAction: String
    var message: String
    var gradientColors: [Color]
}

let cardData: [CardModel] = [
    CardModel(title: "SwiftUI", headline: "如此美妙 不同凡响", imageName: "developer01", callToAction: "技术总监", message: "态度决定一切", gradientColors: [Color("Color01"),Color("Color02")]),
    CardModel(title: "iOS", headline: "快乐编程 享受过程", imageName: "developer02", callToAction: "技术主管", message: "深度决定路线", gradientColors: [Color("Color01"),Color("Color02")])
]
