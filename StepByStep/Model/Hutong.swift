//
//  Hutong.swift
//  StepByStep
//
//  Created by wander on 2021/11/24.
//  Copyright © 2021 cn.wanderros. All rights reserved.
//

import Foundation

struct Hutong: Identifiable {
    let id = UUID()
    var image: String
    var title: String
    var ranking: String
    var destination: String
    var times: String
    var feature: String
}


let hutongData: [Hutong] = [
    Hutong(image: "food1", title: "后海", ranking: "test", destination: "test", times: "test", feature: "beautiful"),
    Hutong(image: "food2", title: "后海", ranking: "test", destination: "test", times: "test", feature: "beautiful")
]
