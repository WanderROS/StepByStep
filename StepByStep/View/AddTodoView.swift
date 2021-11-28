//
//  AddTodoView.swift
//  StepByStep
//
//  Created by wander on 2021/11/28.
//  Copyright © 2021 cn.wanderros. All rights reserved.
//

import SwiftUI

struct AddTodoView: View {
    @State private var name = ""
    @State private var priority = "标准"
    @Environment(\.presentationMode) var presentationMode
    
    let priorities = ["高","标准","低"]
    let themes: [Theme] = themeData
    @ObservedObject var theme = ThemeSettings()
    var body: some View {
        NavigationView {
            VStack {
                Form {
                    TextField("待办事项",text: $name)
                        .padding()
                        .background(Color(UIColor.tertiarySystemFill))
                        .cornerRadius(9)
                        .font(.system(size: 24, weight: .bold, design: .default))
                    Picker("优先级",selection: $priority) {
                        ForEach(priorities,id: \.self){
                            Text($0)
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                    
                    Button(action: {
                        self.presentationMode.wrappedValue.dismiss()
                        print("保存一个新的待办事项")
                    }, label: {
                        Text("保存")
                            .font(.system(size:24,weight:.bold,design:.default))
                            .padding()
                            .frame(minWidth:0,maxWidth: .infinity)
                            .background(themes[self.theme.themeSettings].themeColor)
                            .cornerRadius(9)
                            .foregroundColor(.white)
                    })
                }
                Spacer()
            }
            .padding(.horizontal)
            .padding(.vertical,10)
            .navigationBarTitle("新的任务",displayMode: .inline)
        }
    }
}

struct AddTodoView_Previews: PreviewProvider {
    static var previews: some View {
        AddTodoView()
    }
}
