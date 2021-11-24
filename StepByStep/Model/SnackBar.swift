//
//  SnackBar.swift
//  StepByStep
//
//  Created by wander on 2021/11/24.
//  Copyright © 2021 cn.wanderros. All rights reserved.
//

import Foundation

struct SnackBar: Identifiable {
    let id = UUID()
    var title: String
    var headline: String
    var image: String
    var rating: Int
    var serves: Int
    var preparation: Int
    var hot: Int
    var introduction: [String]
    var method: [String]
}


let snackBarData: [SnackBar] = [
    SnackBar(title: "好吃", headline: "有点好吃", image: "food1", rating: 3, serves: 2, preparation: 3, hot: 5, introduction: ["好吃"], method: ["等着"]),
    SnackBar(title: "好吃", headline: "有点好吃", image: "food2", rating: 5, serves: 2, preparation: 3, hot: 5, introduction: ["好吃"], method: ["等着"])

]
