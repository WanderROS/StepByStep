//
//  ContentView.swift
//  StepByStep
//
//  Created by wander on 2021/11/22.
//  Copyright © 2021 cn.wanderros. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var secured = false
    @State var password = ""
    
    var body: some View {
        
        VStack {
            NavigationView {
                    NavigationLink(destination: EditButtonPage()) {
                        Text("NavigationButton").bold()
                            .foregroundColor(.orange)
                            .font(.largeTitle)
                        }
                .navigationBarTitle(Text("Page"))
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
