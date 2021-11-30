//
//  File.swift
//  StepByStep
//
//  Created by Wander on 2021/11/30.
//  Copyright © 2021 cn.wanderros. All rights reserved.
//

import Foundation
import SwiftUI

struct Category: Codable,Identifiable {
    let id: Int
    let name: String
    var image: String {
        self.name
    }
}
