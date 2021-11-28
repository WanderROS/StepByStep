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
    var body: some View {
        NavigationView{
            List(0..<5) {
                item in
                Text("Hello, World!")
            }
            .navigationBarTitle("待办事项",displayMode: .inline)
            .navigationBarItems(trailing:
                Button(action: {
                    self.showingAddTodoView.toggle()
                }, label: {
                    Image(systemName: "plus")
                })
                    .sheet(isPresented: $showingAddTodoView, content: {
                        AddTodoView()
                    })
            )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
