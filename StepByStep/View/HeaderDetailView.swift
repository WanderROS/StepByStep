//
//  HeaderDetailView.swift
//  StepByStep
//
//  Created by Wander on 2021/11/30.
//  Copyright © 2021 cn.wanderros. All rights reserved.
//

import SwiftUI

struct HeaderDetailView: View {
    let pen: Pen
    var body: some View {
        VStack(alignment:.leading,spacing: 6) {
            Text("书写用品")
            Text(pen.name)
                .font(.largeTitle)
                .fontWeight(.black)
        }
        .foregroundColor(.white)
    }
}

struct HeaderDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderDetailView(pen: pens[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray)
    }
}
