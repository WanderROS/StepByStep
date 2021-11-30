//
//  TopPartDetailView.swift
//  StepByStep
//
//  Created by Wander on 2021/11/30.
//  Copyright © 2021 cn.wanderros. All rights reserved.
//

import SwiftUI

struct TopPartDetailView: View {
    let pen: Pen
    @State private var isAnimating: Bool = false
    var body: some View {
        HStack(alignment: .center, spacing: 6){
            VStack(alignment: .leading, spacing: 6, content: {
                Text("单价")
                    .fontWeight(.semibold)
                Text("\(pen.price)")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .scaleEffect(1.35,anchor: .leading)
            })
            .offset(y: isAnimating ? -50 : -75)
            Spacer()
            Image(pen.image)
                .resizable()
                .scaledToFit()
                .offset(y: isAnimating ? 0 : -35)
        }
        .onAppear(){
            withAnimation(.easeOut(duration: 0.75)) {
                isAnimating.toggle()
            }
        }
    }
}

struct TopPartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TopPartDetailView(pen: pens[0])
    }
}
