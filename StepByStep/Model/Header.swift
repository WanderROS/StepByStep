//
//  Header.swift
//  StepByStep
//
//  Created by Wander on 2021/11/24.
//  Copyright © 2021 cn.wanderros. All rights reserved.
//

import Foundation
import SwiftUI

struct Header: Identifiable {
    let id = UUID()
    var image: String
    var headline: String
    var subheadline: String
}


let headerData: [Header] = [
    Header(image: "food1", headline: "驴打滚", subheadline: "味道好极了"),
    Header(image: "food2", headline: "驴打滚2", subheadline: "味道好极了2"),
    Header(image: "food3", headline: "驴打滚3", subheadline: "味道好极了3"),
]
