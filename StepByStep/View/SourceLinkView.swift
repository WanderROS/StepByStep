//
//  SourceLinkView.swift
//  StepByStep
//
//  Created by Wander on 2021/11/29.
//  Copyright © 2021 cn.wanderros. All rights reserved.
//

import SwiftUI

struct SourceLinkView: View {
    var body: some View {
            HStack {
                Text("内容来源")
                Spacer()
                if #available(iOS 14.0, *) {
                    Link("百度百科", destination: URL(string: "https://www.hao123.com")!)
                } else {
                    // Fallback on earlier versions
                    Text("百度百科")
                }
                Image(systemName: "arrow.up.right.square")
            }
    }
}

struct SourceLinkView_Previews: PreviewProvider {
    static var previews: some View {
        SourceLinkView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
