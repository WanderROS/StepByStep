//
//  EmptyListView.swift
//  StepByStep
//
//  Created by wander on 2021/11/28.
//  Copyright © 2021 cn.wanderros. All rights reserved.
//

import SwiftUI

struct EmptyListView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 20) {
            Image("gray")
            .resizable()
            .scaledToFit()
            .layoutPriority(1)
            
            Text("更好的利用时间")
                .layoutPriority(0.5)
                .font(.headline)
        }
        .padding(.horizontal)
    }
}

struct EmptyListView_Previews: PreviewProvider {
    static var previews: some View {
        EmptyListView()
    }
}
