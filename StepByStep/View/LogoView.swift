//
//  LogoView.swift
//  StepByStep
//
//  Created by Wander on 2021/11/25.
//  Copyright © 2021 cn.wanderros. All rights reserved.
//

import SwiftUI

struct LogoView: View {
    var body: some View {
        Image("fruitmachine")
            .resizable()
            .scaledToFit()
            .frame(minWidth:60,idealWidth: 120,maxWidth: 180,minHeight: 60,idealHeight: 120,maxHeight: 180,alignment: .center)
            .padding()
            .layoutPriority(1)
            .modifier(ShadowModifier())
    }
}

struct LogoView_Previews: PreviewProvider {
    static var previews: some View {
        LogoView()
    }
}
