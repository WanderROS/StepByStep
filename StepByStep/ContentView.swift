//
//  ContentView.swift
//  StepByStep
//
//  Created by wander on 2021/11/22.
//  Copyright © 2021 cn.wanderros. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        if #available(iOS 14.0, *) {
            VStack {
                NavigationBarView()
                    .padding(.horizontal,15)
                    .padding(.bottom)
                    .padding(.top,UIApplication.shared.windows.first?.safeAreaInsets.top)
                    .background(Color.white)
                    .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 5)
                

                ScrollView(.vertical,showsIndicators: false){
                    VStack(spacing: 0) {
                        LazyVGrid(columns: gridLayout, spacing: 15, pinnedViews: /*@START_MENU_TOKEN@*/[]/*@END_MENU_TOKEN@*/, content: {
                            ForEach(pens) {
                                item in
                                PenItemView(pen: item)
                            }
                        })
                        HeaderTabView()
                            .padding(.vertical,20)
                        CategoryGridView()
                        FooterView()
                    }
                }
            }
            .background(colorBackground.ignoresSafeArea(.all,edges: .all))
        } else {
            // Fallback on earlier versions
            VStack {
                Spacer()
                FooterView()
                    .padding(.horizontal)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 12")
    }
}
