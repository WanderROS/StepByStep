//
//  GuideComponent.swift
//  StepByStep
//
//  Created by wander on 2021/11/27.
//  Copyright © 2021 cn.wanderros. All rights reserved.
//

import SwiftUI

struct GuideComponent: View {
    var title: String
    var subtitle: String
    var description: String
    var icon: String
    
    var body: some View {
        HStack {
            Image(systemName: icon)
                .font(.largeTitle)
                .foregroundColor(.pink)
            VStack(alignment: .leading, spacing: 4) {
                HStack {
                    Text(title)
                        .font(.title)
                        .fontWeight(.heavy)
                    Spacer()
                    Text(subtitle)
                        .font(.footnote)
                        .fontWeight(.heavy)
                        .foregroundColor(.pink)
                }
                Divider().padding(.bottom,4)
                Text(description)
                    .font(.footnote)
                    .foregroundColor(.secondary)
                .fixedSize(horizontal: false, vertical: true)
            }
        }
    }
}

struct GuideComponent_Previews: PreviewProvider {
    static var previews: some View {
        GuideComponent(title: "Title", subtitle: "向右滑动", description: "这部分是占位的文字，这部分是占位的文字，这部分是占位的文字，这部分是占位的文字。", icon: "heart.circle")
            .previewLayout(.sizeThatFits)
    }
}
