//
//  ContentView.swift
//  StepByStep
//
//  Created by wander on 2021/11/22.
//  Copyright © 2021 cn.wanderros. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var showAlert = false
    @State var showGuideView = false
    @State var showInfoView = false
    var body: some View {
        
        VStack {
            HeaderView(showGuideView: $showGuideView, showInfoView: $showInfoView)
            Spacer()
            CardView(photo: inHeartData[0])
            .padding()
            Spacer()
            FooterView(showHeartAlert: $showAlert)
        }
        .alert(isPresented: $showAlert){
            Alert(title: Text("成功"), message: Text("希望你和小伙伴可以度过一段美好的时光"), dismissButton: .default(Text("Have a Good Time")))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
