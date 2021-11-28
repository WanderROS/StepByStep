//
//  SettingsView.swift
//  StepByStep
//
//  Created by wander on 2021/11/28.
//  Copyright © 2021 cn.wanderros. All rights reserved.
//

import SwiftUI

struct SettingsView: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        NavigationView {
            VStack(alignment: .center, spacing: 0) {
                Form {
                    Section(header: Text("关于应用程序")){
                        FormRowStaticView(icon: "gear", firstText: "应用程序", secondText: "待办事项")
                        FormRowStaticView(icon: "checkmark.seal", firstText: "兼容性", secondText: "iPhone,iPad")
                        FormRowStaticView(icon: "keyboard", firstText: "开发人员", secondText: "Wander")
                        FormRowStaticView(icon: "paintbrush", firstText: "设计人员", secondText: "Google")
                        FormRowStaticView(icon: "flag", firstText: "版本", secondText: "1.0.0")
                    }
                    Section(header: Text("第三方链接")) {
                        FormRowLinkView(icon: "globe", color: Color.pink, text: "源码", link: "https://github.com/WanderROS/StepByStep")
                        FormRowLinkView(icon: "link", color: Color.blue, text: "百度", link: "https://www.hao123.com")
                        FormRowLinkView(icon: "play.rectangle", color: Color.green, text: "Youtube", link: "https://www.youtube.com")
                    }
                }
            }
            .background(Color("ColorBackground"))
            .padding(.top,60)
            .edgesIgnoringSafeArea(.all)
            .navigationBarItems(trailing:
                Button(action: {
                    self.presentationMode.wrappedValue.dismiss()
                }, label: {
                    Image(systemName: "xmark")
                })
            )
            .navigationBarTitle("设置",displayMode: .inline)
        }
        
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
