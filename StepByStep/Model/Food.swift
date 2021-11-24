//
//  Food.swift
//  StepByStep
//
//  Created by wander on 2021/11/24.
//  Copyright © 2021 cn.wanderros. All rights reserved.
//

import Foundation
import SwiftUI

struct Food: Identifiable {
    let id = UUID()
    var image: String
    var content: String
}


let foodData: [Food] = [
    Food(image: "food1", content: "挺好吃的1"),
    Food(image: "food2", content: "挺好吃的2"),
    Food(image: "food3", content: "挺好吃的3"),
    Food(image: "food4", content: "挺好吃的4"),
]
