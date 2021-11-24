//
//  SettingsView.swift
//  StepByStep
//
//  Created by Wander on 2021/11/24.
//  Copyright © 2021 cn.wanderros. All rights reserved.
//

import SwiftUI

struct SettingsView: View {
    @State private var enableNotification = true
    @State private var backgroundRefresh = false
    var body: some View {
        VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 0) {
            VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 5){
                Image("Huba")
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .padding(.top)
                    .frame(width: 140, height: 140, alignment: .center)
                    
                    .shadow(color: Color("ColorBlackTransparentDark"), radius: 8, x: 0, y: 4)
                Text("这里是北京")
                    .font(.title)
                    .fontWeight(.light)
                    .foregroundColor(Color("ColorBlackTransparentDark"))
            }  //: VStack
            .padding()
            
            // 表单
            Form {
                Section(header: Text("通用设置")){
                    Toggle(isOn: $enableNotification) {
                        Text("启用消息通知")
                    }
                    Toggle(isOn: $backgroundRefresh) {
                        Text("刷新背景")
                    }
                }
                Section(header: Text("应用程序")){
                    if enableNotification {
                        HStack {
                            Text("开发者").foregroundColor(.gray)
                            Spacer()
                            Text("SwiftUI Learner")
                        }
                        HStack {
                            Text("设计者").foregroundColor(.gray)
                            Spacer()
                            Text("SwiftUI Designer")
                        }
                        HStack {
                            Text("兼容性").foregroundColor(.gray)
                            Spacer()
                            Text("iOS 13 +")
                        }
                        HStack {
                            Text("SwiftUI版本").foregroundColor(.gray)
                            Spacer()
                            Text("2.0")
                        }
                        HStack {
                            Text("版本").foregroundColor(.gray)
                            Spacer()
                            Text("1.2.0")
                        }
                    } else {
                        HStack {
                            Text("私人信息").foregroundColor(.gray)
                            Spacer()
                            Text("希望能够学习到更多SwiftUI 知识！")
                        }
                    }
                }
            }
        }
        .frame(maxWidth:640)
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
