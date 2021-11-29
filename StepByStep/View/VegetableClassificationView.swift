//
//  VegetableClassificationView.swift
//  StepByStep
//
//  Created by Wander on 2021/11/29.
//  Copyright © 2021 cn.wanderros. All rights reserved.
//

import SwiftUI

struct VegetableClassificationView: View {
    var vegetable: Vegetable
    let classfication: [String] = ["门","纲","亚纲"]
    var body: some View {
        if #available(iOS 14.0, *) {
            GroupBox {
                DisclosureGroup("蔬菜分类"){
                    ForEach(0..<classfication.count,id:\.self) {
                        item in
                        Divider().padding(.vertical,2)
                        
                        HStack {
                            
                            HStack {
                                Image(systemName: "info.circle")
                                Text(classfication[item])
                            }
                            .foregroundColor(vegetable.gradientColors[1])
                            .font(Font.system(.body).bold())
                            
                            Spacer(minLength: 65)
                            Text(vegetable.classfication[item])
                                .multilineTextAlignment(.trailing)
                        }
                    }
                }
            }
        } else {
            // Fallback on earlier versions
            Text("Not supported")
        }
    }
}

struct VegetableClassificationView_Previews: PreviewProvider {
    static var previews: some View {
        VegetableClassificationView(vegetable: vegetableData[0])
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 375, height: 480))
            .padding()
    }
}
