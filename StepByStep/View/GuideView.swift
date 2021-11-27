//
//  GuideView.swift
//  StepByStep
//
//  Created by wander on 2021/11/27.
//  Copyright © 2021 cn.wanderros. All rights reserved.
//

import SwiftUI

struct GuideView: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        ScrollView(.vertical,showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
                HeaderComponent()
                Spacer(minLength: 10)
                Text("开始")
                    .fontWeight(.black)
                    .font(.largeTitle)
                    .foregroundColor(.pink)
                
                Text("发现最美丽的目的地，只需要你动动手指头！")
                    .lineLimit(nil)
                    .multilineTextAlignment(.center)
                Spacer(minLength: 10)
                
                VStack(alignment: .leading, spacing: 25) {
                    GuideComponent(title: "喜爱", subtitle: "右滑照片", description: "如果喜欢这张照片，右滑即可", icon: "heart.circle")
                    GuideComponent(title: "不喜爱", subtitle: "左滑照片", description: "如果不喜欢这张照片，左滑即可", icon: "xmark.circle")
                    GuideComponent(title: "预定", subtitle: "单击照片", description: "如果喜欢这张照片的目的地，点击即可", icon: "checkmark.square")
                }
                Spacer(minLength: 10)
                Button(action: {
                    self.presentationMode.wrappedValue.dismiss()
                }, label: {
                    Text("让我们继续")
                    .modifier(ButtonModifier())
                })
                
            }
            .frame(minWidth:0,maxWidth: .infinity)
            .padding(.top,15)
            .padding(.bottom,25)
            .padding(.horizontal,25)
        }
    }
}

struct GuideView_Previews: PreviewProvider {
    static var previews: some View {
        GuideView()
    }
}
