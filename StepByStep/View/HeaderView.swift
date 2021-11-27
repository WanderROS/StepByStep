//
//  HeaderView.swift
//  StepByStep
//
//  Created by wander on 2021/11/27.
//  Copyright © 2021 cn.wanderros. All rights reserved.
//

import SwiftUI

struct HeaderView: View {
    @Binding var showGuideView: Bool
    @Binding var showInfoView: Bool
    var body: some View {
        HStack {
            Button(action: {
                // 信息按钮
                self.showInfoView.toggle()
            }, label: {
                Image(systemName: "info.circle")
                    .font(.system(size:24,weight:.regular))
            }).accentColor(.primary)
                .sheet(isPresented: $showInfoView, content: {
                    InfoView()
                })
            Spacer()
            
            Image("logo")
                .resizable()
                .scaledToFit()
                .frame(height:30)
            
            Spacer()
            
            Button(action: {
                // 指南按钮
                self.showGuideView.toggle()
            }, label: {
                Image(systemName: "questionmark.circle")
                    .font(.system(size:24,weight:.regular))
            }).accentColor(.primary)
                .sheet(isPresented: $showGuideView, content: {
                    GuideView()
                })
            
        }
        .padding()
    }
}

struct HeaderView_Previews: PreviewProvider {
    @State static var showGuideView = false
    @State static var showInfoView = false
    static var previews: some View {
        HeaderView(showGuideView: $showGuideView, showInfoView: $showInfoView).previewLayout(.fixed(width: 375, height: 80))
    }
}
