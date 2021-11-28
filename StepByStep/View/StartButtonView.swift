//
//  StartButtonView.swift
//  StepByStep
//
//  Created by wander on 2021/11/28.
//  Copyright © 2021 cn.wanderros. All rights reserved.
//

import SwiftUI

struct StartButtonView: View {
    var body: some View {
        Button(action: {
            print("退出引导画面")
        }, label: {
            HStack(spacing: 8){
                Text("开始")
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal,16)
            .padding(.vertical,10)
            .background(Capsule().strokeBorder(Color.white,lineWidth: 1.25))
        }).accentColor(.white)
    }
}

struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .previewLayout(.sizeThatFits)
    }
}
