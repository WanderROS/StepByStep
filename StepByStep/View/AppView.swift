//
//  AppView.swift
//  StepByStep
//
//  Created by wander on 2021/11/23.
//  Copyright © 2021 cn.wanderros. All rights reserved.
//

import SwiftUI

struct AppView: View {
    var body: some View {
        TabView{
            BeijingView()
                .tabItem({
                    Image(systemName: "mic")
                    Text("北京")
                })
            FoodView()
                .tabItem({
                    Image(systemName: "pencil")
                    Text("小吃")
                })
        }
        
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            AppView().preferredColorScheme(.light)
            AppView().preferredColorScheme(.dark)
        }
    }
}
