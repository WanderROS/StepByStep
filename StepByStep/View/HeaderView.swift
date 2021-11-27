//
//  HeaderView.swift
//  StepByStep
//
//  Created by wander on 2021/11/27.
//  Copyright © 2021 cn.wanderros. All rights reserved.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        HStack {
            Button(action: {
                // 信息按钮
            }, label: {
                Image(systemName: "info.circle")
                    .font(.system(size:24,weight:.regular))
            }).accentColor(.primary)
            
            Spacer()
            
            Image("logo")
                .resizable()
                .scaledToFit()
                .frame(height:30)
            
            Spacer()
            
            Button(action: {
                // 指南按钮
            }, label: {
                Image(systemName: "questionmark.circle")
                    .font(.system(size:24,weight:.regular))
            }).accentColor(.primary)
        }
        .padding()
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView().previewLayout(.fixed(width: 375, height: 80))
    }
}
