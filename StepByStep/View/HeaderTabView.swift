//
//  HeaderTabView.swift
//  StepByStep
//
//  Created by Wander on 2021/11/30.
//  Copyright © 2021 cn.wanderros. All rights reserved.
//

import SwiftUI

struct HeaderTabView: View {
    let headers: [Header] = Bundle.main.decode("header.json")
    var body: some View {
        if #available(iOS 14.0, *) {
            TabView {
                ForEach(headers) {
                    item in
                    HeaderItemView(header: item)
                        .padding(.top,10)
                        .padding(.horizontal,15)
                }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
        } else {
            // Fallback on earlier versions
            TabView {
                ForEach(headers) {
                    item in
                    HeaderItemView(header: item)
                        .padding(.top,10)
                        .padding(.horizontal,15)
                }
            } 
        }
    }
}

struct HeaderTabView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderTabView()
    }
}
