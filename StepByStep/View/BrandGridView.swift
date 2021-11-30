//
//  BrandGridView.swift
//  StepByStep
//
//  Created by Wander on 2021/11/30.
//  Copyright © 2021 cn.wanderros. All rights reserved.
//

import SwiftUI

struct BrandGridView: View {
    var body: some View {
        ScrollView(.horizontal,showsIndicators: false){
            if #available(iOS 14.0, *) {
                LazyHGrid(rows: gridLayout, spacing: columnSpacing, pinnedViews: /*@START_MENU_TOKEN@*/[]/*@END_MENU_TOKEN@*/, content: {
                    ForEach(brands){
                        item in
                        BrandItemView(brand: item)
                    }
                })
                .frame(height: 200)
                .padding(15)
            } else {
                // Fallback on earlier versions
                ForEach(brands){
                    item in
                    BrandItemView(brand: item)
                }
            }
        }
    }
}

struct BrandGridView_Previews: PreviewProvider {
    static var previews: some View {
        BrandGridView()
            .previewLayout(.sizeThatFits)
            .background(colorBackground)
    }
}
