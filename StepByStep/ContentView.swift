//
//  ContentView.swift
//  StepByStep
//
//  Created by wander on 2021/11/22.
//  Copyright © 2021 cn.wanderros. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var showingAddTodoView: Bool = false
    @State private var showingSettingView: Bool = false
    @EnvironmentObject var iconSettings: IconNames
    var themes: [Theme] = themeData
    @ObservedObject var theme = ThemeSettings()
    @State private var animationButton = false
    var body: some View {
        ZStack {
            NavigationView{
                List(0..<5) {
                    item in
                    Text("Hello, World!\(self.themes[self.theme.themeSettings].themeName)")
                }
                .navigationBarTitle("待办事项",displayMode: .inline)
                .navigationBarItems(leading: Button(action: {
                    self.showingSettingView.toggle()
                }, label: {
                    Image(systemName: "paintbrush")
                }).accentColor(self.themes[self.theme.themeSettings].themeColor).sheet(isPresented: $showingSettingView, content: {
                    SettingsView().environmentObject(self.iconSettings)
                }),trailing: Button(action: {
                    self.showingAddTodoView.toggle()
                }, label: {
                    Image(systemName: "plus")
                }).accentColor(self.themes[self.theme.themeSettings].themeColor)
                    .sheet(isPresented: $showingAddTodoView, content: {
                        AddTodoView()
                    }))
            }
        }
        .overlay(ZStack {
            Group{
                Circle()
                    .fill(Color.blue)
                    .opacity(self.animationButton ? 0.2 : 0.1)
                    .frame(width:68,height: 68,alignment: .center)
                Circle()
                    .fill(Color.blue)
                    .opacity(self.animationButton ? 0.15 : 0)
                    .frame(width:88,height: 88,alignment: .center)
            }
            .animation(Animation.easeInOut(duration: 2).repeatForever(autoreverses: true),value: animationButton)
            Button(action: {
                self.showingAddTodoView.toggle()
            }, label: {
                ZStack {
                    Image(systemName: "plus.circle.fill")
                        .resizable()
                        .scaledToFit()
                        .foregroundColor(.white)
                        .background(Circle().fill(Color.blue))
                        .frame(width:48,height:48,alignment:.center)
                }
            })
                .onAppear(){
                    self.animationButton.toggle()
            }
        }
        .padding(.bottom,25)
        .padding(.trailing,25)
            ,alignment: .bottomTrailing)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


class IconNames: ObservableObject {
    var iconNames: [String?] = []
    
    @Published var currentIndex = 0
    
    func getAlternnateIconNames() {
        if let icons = Bundle.main.object(forInfoDictionaryKey: "CFBundleIcons") as? [String: Any],
            let alternateIcons = icons["CFBundleAlternateIcons" ] as? [String: Any] {
            for(_,value) in alternateIcons {
                guard let iconList = value as? Dictionary<String,Any> else {
                    return
                }
                guard let iconFiles = iconList["CFBundleIconFiles"] as? [String] else {
                    return
                }
                guard let icon = iconFiles.first else {
                    return
                }
                iconNames.append(icon)
            }
        }
    }
    
    init() {
        getAlternnateIconNames()
        if let currentIcon = UIApplication.shared.alternateIconName {
            self.currentIndex = iconNames.firstIndex(of: currentIcon) ?? 0
        }
        print(iconNames)
    }
}
