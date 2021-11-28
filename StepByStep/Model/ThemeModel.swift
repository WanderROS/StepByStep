//
//  ThemeModel.swift
//  StepByStep
//
//  Created by wander on 2021/11/28.
//  Copyright © 2021 cn.wanderros. All rights reserved.
//
import SwiftUI

struct Theme: Identifiable {
    let id: Int
    let themeName: String
    let themeColor: Color
}


let themeData: [Theme] = [
    Theme(id: 0, themeName: "Pink", themeColor: Color.pink),
    Theme(id: 1, themeName: "Blue", themeColor: Color.blue),
    Theme(id: 2, themeName: "Green", themeColor: Color.green)
]


class ThemeSettings: ObservableObject {
    @Published var themeSettings: Int = UserDefaults.standard.integer(forKey: "Theme"){
        didSet{
            UserDefaults.standard.set(self.themeSettings,forKey: "Theme")
        }
    }
    public static let shared = ThemeSettings()
}

