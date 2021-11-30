//
//  PenDetailView.swift
//  StepByStep
//
//  Created by Wander on 2021/11/30.
//  Copyright © 2021 cn.wanderros. All rights reserved.
//

import SwiftUI

struct PenDetailView: View {
    let pen: Pen
    let sizes: [String] = ["EF","F","M","B","BB"]
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            NavigationBarDetailView()
                .padding()
                .padding(.top,UIApplication.shared.windows.first?.safeAreaInsets.top)
            Text(pen.name)

                
               
            
            // MARK: - 笔尖规格和评星
            VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 0, content: {
                TopPartDetailView(pen: pen)
                    .padding(.horizontal)
                    Text("笔尖规则")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .foregroundColor(colorGray)
                HStack(alignment: .center, spacing: 5, content: {
                    ForEach(sizes,id:\.self){ size in
                        Button(action: {
                            
                        }, label: {
                            Text(size)
                                .font(.footnote)
                                .fontWeight(.heavy)
                                .foregroundColor(colorGray)
                                .frame(width: 28, height: 28, alignment: .center)
                                .background(Color.white.cornerRadius(5))
                                .background(RoundedRectangle(cornerRadius: 5).stroke(colorGray,lineWidth: 2))
                        })
                    }
                })
            }).zIndex(1)
            
            ScrollView(/*@START_MENU_TOKEN@*/.vertical/*@END_MENU_TOKEN@*/, showsIndicators: false, content: {
                Text(pen.description)
                    .font(.subheadline)
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.leading)
                    
            })
            .background(Color.white.clipShape(CustomShape()).padding(.top,-105))
            .zIndex(0)
            Spacer()
        }
        .padding(.horizontal)
        .background(Color(red: pen.color[0], green: pen.color[1], blue: pen.color[2]))
    }
}

struct PenDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PenDetailView(pen: pens[0])
            .previewLayout(.fixed(width: 375, height: 812))
    }
}
