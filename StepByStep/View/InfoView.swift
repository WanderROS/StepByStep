//
//  InfoView.swift
//  StepByStep
//
//  Created by wander on 2021/11/27.
//  Copyright © 2021 cn.wanderros. All rights reserved.
//

import SwiftUI

struct InfoView: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        ScrollView(.vertical,showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
                HeaderComponent()
                Spacer(minLength: 10)
                Text("应用程序信息")
                    .fontWeight(.black)
                .modifier(TitleModifier())
                RowAppInfoView()
                Text("职员表")
                    .fontWeight(.black)
                .modifier(TitleModifier())
                VStack {
                    AppinfoViewRow(itemOne: "图片提供者", itemTwo: "Google")
                    AppinfoViewRow(itemOne: "开发者", itemTwo: "Wander")
                    AppinfoViewRow(itemOne: "版本", itemTwo: "1.0.0")

                }
                
                Spacer(minLength: 10)
                Button(action: {
                    self.presentationMode.wrappedValue.dismiss()
                }, label: {
                    Text("让我们继续")
                    }).modifier(ButtonModifier())
                
            }
            .frame(minWidth: 0, maxWidth: .infinity)
            .padding(.top,15)
            .padding(.bottom,25)
            .padding(.horizontal,25)
        }
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView()
    }
}

struct RowAppInfoView: View {
    var body: some View {
        HStack {
            Text("应用程序").foregroundColor(.gray)
            Spacer()
            Text("在你心中")
        }
    }
}

struct AppinfoViewRow: View {
    var itemOne: String
    var itemTwo: String
    var body: some View {
        VStack {
            HStack {
                Text(itemOne).foregroundColor(.gray)
                Spacer()
                Text(itemTwo)
            }
            Divider()
        }
    }
}
