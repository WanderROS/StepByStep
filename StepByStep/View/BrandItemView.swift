//
//  BrandItemView.swift
//  StepByStep
//
//  Created by Wander on 2021/11/30.
//  Copyright © 2021 cn.wanderros. All rights reserved.
//

import Foundation
import SwiftUI


struct BrandItemView: View {
    let brand: Brand
    var body: some View {
        Image(brand.image)
            .resizable()
            .scaledToFit()
            .padding()
            .background(Color.white.cornerRadius(12))
            .background(RoundedRectangle(cornerRadius: 12).stroke(Color.gray,lineWidth: 1))
    }
}

struct BrandItemView_Previews: PreviewProvider {
    static var previews: some View {
        BrandItemView(brand: brands[1])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
