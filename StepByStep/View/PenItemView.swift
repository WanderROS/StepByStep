//
//  PenItemView.swift
//  StepByStep
//
//  Created by Wander on 2021/11/30.
//  Copyright © 2021 cn.wanderros. All rights reserved.
//

import SwiftUI

struct PenItemView: View {
    let pen: Pen
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            ZStack{
                Image(pen.image)
                    .resizable()
                    .scaledToFit()
                    .padding(10)
            }
            .background(Color(red: pen.color[0], green: pen.color[1], blue: pen.color[2])).cornerRadius(12)
            
            if #available(iOS 14.0, *) {
                Text(pen.name)
                    .font(.title3)
                    .fontWeight(.black)
            } else {
                // Fallback on earlier versions
                Text(pen.name)
                    .font(.title)
                    .fontWeight(.black)
            }
            
            Text("￥ \(pen.price)")
                .fontWeight(.semibold)
                .foregroundColor(.gray)
        }
    }
}

struct PenItemView_Previews: PreviewProvider {
    static var previews: some View {
        PenItemView(pen: pens[1])
            .previewLayout(.fixed(width: 200, height: 300))
            .padding()
            .background(colorBackground)
    }
}
