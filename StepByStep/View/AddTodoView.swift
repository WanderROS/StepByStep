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
    
    var body: some View {
        NavigationView {
            VStack {
                Form {
                    TextField("待办事项",text: $name)
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
                    })
                }
                 Spacer()
            }
            .navigationBarTitle("新的任务",displayMode: .inline)
        }
    }
}

struct AddTodoView_Previews: PreviewProvider {
    static var previews: some View {
        AddTodoView()
    }
}
