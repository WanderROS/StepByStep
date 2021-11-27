//
//  FooterView.swift
//  StepByStep
//
//  Created by wander on 2021/11/27.
//  Copyright © 2021 cn.wanderros. All rights reserved.
//

import SwiftUI

struct FooterView: View {
    @Binding var showHeartAlert: Bool
    var body: some View {
        HStack {
            Image(systemName: "xmark.circle")
                .font(.system(size: 42, weight: .light, design: .serif))
            Spacer()
            Button(action: {
                self.showHeartAlert.toggle()
            }, label: {
                Text("心中的目的地")
                    .font(.system(.subheadline, design: .rounded))
                    .fontWeight(.heavy)
                    .padding(.horizontal,20)
                    .padding(.vertical,12)
                    .accentColor(.pink)
                    .background(Capsule().stroke(Color.pink,lineWidth: 2))
            })
            Spacer()
            Image(systemName: "heart.circle")
                .font(.system(size:42, weight:.light))
        }
    .padding()
    }
}

struct FooterView_Previews: PreviewProvider {
    @State static var showAlert: Bool = false
    static var previews: some View {
        FooterView(showHeartAlert: $showAlert).previewLayout(.fixed(width: 375, height: 80))
    }
}
