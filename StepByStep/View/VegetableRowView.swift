//
//  VegetableRowView.swift
//  StepByStep
//
//  Created by wander on 2021/11/28.
//  Copyright © 2021 cn.wanderros. All rights reserved.
//

import SwiftUI

struct VegetableRowView: View {
    var vegetable: Vegetable
    var body: some View {
        HStack {
            Image(vegetable.image)
                .renderingMode(.original)
              //  .renderingMode(.template)
            .resizable()
            .scaledToFit()
                .frame(width:80,height: 80,alignment: .center)
                .shadow(color: Color(red: 0, green: 0, blue: 0,opacity: 0.3), radius: 3, x: 2, y: 2)
                .background(LinearGradient(gradient: Gradient(colors: vegetable.gradientColors), startPoint: .top, endPoint: .bottom))
            .cornerRadius(8)
            VStack(alignment: .leading, spacing: 5) {
                Text(vegetable.title)
                    .font(.title)
                    .fontWeight(.heavy)
                Text(vegetable.headline)
                    .font(.caption)
                    .foregroundColor(.secondary)
            }
        }
    }
}

struct VegetableRowView_Previews: PreviewProvider {
    static var previews: some View {
        VegetableRowView(vegetable: vegetableData[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
