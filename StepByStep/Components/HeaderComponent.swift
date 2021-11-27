//
//  HeaderComponent.swift
//  StepByStep
//
//  Created by wander on 2021/11/27.
//  Copyright © 2021 cn.wanderros. All rights reserved.
//

import SwiftUI

struct HeaderComponent: View {
    var body: some View {
        VStack(alignment: .center, spacing: 20){
            Capsule()
                .frame(width:128,height: 6)
                .foregroundColor(.secondary)
                .opacity(0.2)
            Image("logo")
            .resizable()
            .scaledToFit()
                .frame(height:28)
        }
    }
}

struct HeaderComponent_Previews: PreviewProvider {
    static var previews: some View {
        HeaderComponent().previewLayout(.fixed(width: 375, height: 128))
    }
}
