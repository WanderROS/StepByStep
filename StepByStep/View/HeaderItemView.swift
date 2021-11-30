//
//  HeaderItemView.swift
//  StepByStep
//
//  Created by Wander on 2021/11/30.
//  Copyright © 2021 cn.wanderros. All rights reserved.
//

import SwiftUI

struct HeaderItemView: View {
    let header: Header
    var body: some View {
        Image(header.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

struct HeaderItemView_Previews: PreviewProvider {
    static  var headers: [Header] = Bundle.main.decode("header.json")
    static var previews: some View {
        HeaderItemView(header: headers[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
