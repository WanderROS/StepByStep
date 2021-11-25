//
//  Extensions.swift
//  StepByStep
//
//  Created by Wander on 2021/11/25.
//  Copyright © 2021 cn.wanderros. All rights reserved.
//

import Foundation
import SwiftUI

extension Text {
    func scoreLableStyle() -> Text {
        self.foregroundColor(.white)
            .font(.system(size:10,weight: .bold,design: .rounded))
    }
    
    func scoreNumberStyle() -> Text {
        self.foregroundColor(.white)
            .font(.system(.title,design: .rounded))
            .fontWeight(.heavy)
    }
}
