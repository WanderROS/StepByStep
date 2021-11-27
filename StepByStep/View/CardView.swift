//
//  CardView.swift
//  StepByStep
//
//  Created by wander on 2021/11/27.
//  Copyright © 2021 cn.wanderros. All rights reserved.
//

import SwiftUI

struct CardView: View {
    let id = UUID()
    var photo: Destination
    var body: some View {
        Image(photo.image)
            .resizable()
            .cornerRadius(24)
            .scaledToFit()
            .frame(minWidth: 0, maxWidth: .infinity)
            .overlay(
                VStack{
                    Text(photo.place)
                        .foregroundColor(.orange)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .shadow(radius: 1)
                        .padding(.horizontal,18)
                        .padding(.vertical,5)
                        .overlay(Rectangle().fill(Color.purple).frame(height:1),alignment: .bottom)
                        .padding(.bottom,10)
                    Text(photo.country)
                        .foregroundColor(.black)
                        .font(.footnote)
                        .fontWeight(.bold)
                        .frame(minWidth: 85)
                        .padding(.horizontal,10)
                        .padding(.vertical,5)
                        .background(Capsule().fill(Color.white))
                }.frame(minWidth:280)
                    .padding(.bottom,50),alignment: .bottom
        )
        
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(photo: inHeartData[0])
            .previewLayout(.fixed(width: 375, height: 600))
    }
}
