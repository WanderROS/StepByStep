//
//  Constant.swift
//  StepByStep
//
//  Created by Wander on 2021/11/30.
//  Copyright © 2021 cn.wanderros. All rights reserved.
//

import Foundation
import SwiftUI

// Color
let colorBackground = Color("ColorBacckground")
let colorGray = Color(UIColor.systemGray4)

// Data
let headers: [Header] = Bundle.main.decode("header.json")
let categories: [Category] = Bundle.main.decode("category.json")
let pens: [Pen] = Bundle.main.decode("pen.json")
let brands: [Brand] = Bundle.main.decode("brand.json")

// layout
let columnSpacing: CGFloat = 10
let rowSpacing: CGFloat = 10

@available(iOS 14.0, *)
var gridLayout: [GridItem] {
    return Array(repeating: GridItem(.flexible(),spacing: rowSpacing), count: 2)
}

