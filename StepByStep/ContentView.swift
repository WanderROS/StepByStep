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
        ScrollView(.horizontal,showsIndicators: false){
            HStack(alignment: .center, spacing: 20) {
                ForEach(cardData){ card in
                    CardView(card: card)
                }
            }.padding(20)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        .previewDevice("iPhone SE2")
    }
}
