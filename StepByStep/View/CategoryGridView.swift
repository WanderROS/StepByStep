//
//  CategoryGridView.swift
//  StepByStep
//
//  Created by Wander on 2021/11/30.
//  Copyright © 2021 cn.wanderros. All rights reserved.
//

import SwiftUI

struct CategoryGridView: View {
    var body: some View {
        ScrollView(.horizontal,showsIndicators: false) {
            if #available(iOS 14.0, *) {
                LazyHGrid(rows: gridLayout, alignment: .center, spacing: columnSpacing, pinnedViews: /*@START_MENU_TOKEN@*/[]/*@END_MENU_TOKEN@*/, content: {
                    Section(header: SectionView(rotateClockWise: false), footer: SectionView(rotateClockWise: true)){
                        ForEach(categories){
                            category in
                            CategoryItemView(category: category)
                        }
                    }
                })
                .frame(height:140)
                .padding(.horizontal,15)
                .padding(.vertical,10)
            } else {
                // Fallback on earlier versions
                ForEach(categories){
                    category in
                    CategoryItemView(category: category)
                }
            }
        }
    }
}

struct CategoryGridView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryGridView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
