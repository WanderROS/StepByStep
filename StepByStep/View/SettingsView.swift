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
        NavigationView{
            ScrollView(.vertical,showsIndicators: false) {
                VStack {
                    Group{
                        HStack{
                            Text("蔬菜百科")
                            Spacer()
                            Image(systemName: "info.circle")
                        }
                    }
                    Section(header: Text("应用程序信息")){
                        HStack{
                            Text("开发人员")
                                .fontWeight(.heavy)
                            Spacer()
                            Text("Wander")
                        }
                        Divider()
                        HStack{
                            Text("设计人员")
                                .fontWeight(.heavy)
                            Spacer()
                            Text("Google")
                        }
                        Divider()
                        HStack{
                            Text("源码地址")
                                .fontWeight(.heavy)
                            Spacer()
                            Button(action: {
                                UIApplication.shared.open(URL(string: "https://github.com/WanderROS/StepByStep")!)
                            }, label: {
                                Image(systemName: "square.and.arrow.up")
                            })
                        }
                    }
                    
                }
                .navigationBarTitle("设置",displayMode: .inline)
            .navigationBarItems(trailing: Button(action: {
                self.presentationMode.wrappedValue.dismiss()
            }, label: {
                Image(systemName: "xmark")
            }))
            .padding()
            }
            
        }
        
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(.dark)
    }
}
