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
    @EnvironmentObject var iconSettings: IconNames
    
    var body: some View {
        NavigationView {
            VStack(alignment: .center, spacing: 0) {
                Form {
                    Section(header: Text("选择应用程序图标")) {
                        
                        Picker(selection: $iconSettings.currentIndex, label: HStack{
                            ZStack{
                                RoundedRectangle(cornerRadius: 8, style: .continuous)
                                    .stroke(Color.primary,lineWidth:2)
                                Image(systemName: "paintbrush")
                                    .font(.system(size: 28, weight: .regular, design: .default))
                                    .foregroundColor(.primary)
                            }
                            .frame(width:44,height:44)
                            
                            Text("应用程序图标")
                                .fontWeight(.bold)
                                .foregroundColor(.primary)
                        }){
                            
                            ForEach(0..<iconSettings.iconNames.count) {
                                index in
                                HStack {
                                    Image(uiImage: UIImage(named:self.iconSettings.iconNames[index] ?? "pink") ?? UIImage())
                                        .renderingMode(.original)
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width:44,height: 44)
                                        .cornerRadius(3)
                                    Spacer().frame(width:8)
                                    Text(self.iconSettings.iconNames[index] ?? "pink")
                                        .frame(alignment: .leading)
                                }
                            }
                        }
                        .onReceive([self.iconSettings.currentIndex].publisher.first()){
                            value in
                            let index = self.iconSettings.iconNames.firstIndex(of: UIApplication.shared.alternateIconName) ?? 0
                            if index != value {
                                UIApplication.shared.setAlternateIconName(self.iconSettings.iconNames[value]){
                                    (error) in
                                    if let error = error {
                                        print(error)
                                    } else {
                                        print("成功更改应用程序图标！")
                                    }
                                }
                            }
                        }
                    }
                    
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
        SettingsView().environmentObject(IconNames())
    }
}
