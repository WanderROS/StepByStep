//
//  HutongRankingView.swift
//  StepByStep
//
//  Created by wander on 2021/11/24.
//  Copyright © 2021 cn.wanderros. All rights reserved.
//

import SwiftUI

struct HutongRankingView: View {
    let hutong: Hutong
    var body: some View {
        VStack {
            Image(hutong.image)
            .resizable()
                .frame(width: 100, height: 100, alignment: .center)
            .clipShape(Circle())
                .background(Circle().fill(Color(.gray)).frame(width: 110, height: 110, alignment: .center))
            .background(Circle().fill(Color(.orange)).frame(width: 120, height: 120, alignment: .center))
            .zIndex(1)
                .offset(y:55)
            
            VStack(alignment: .center, spacing: 10){
                VStack(alignment: .center, spacing: 0){
                    Text(hutong.ranking)
                        .font(.system(.largeTitle,design:.serif))
                        .fontWeight(.bold)
                    
                    Text("Ranking")
                        .font(.system(.body,design:.serif))
                        .fontWeight(.heavy)
                }
                .foregroundColor(.orange)
                .padding(.top,65)
            .frame(width: 180)
                

                 Text(hutong.title)
                    .font(.system(.title,design:.serif))
                    .fontWeight(.bold)
                    .foregroundColor(.yellow)
                    .padding(.vertical,12)
                    .padding(.horizontal,0)
                .frame(width: 220)
                    .background(RoundedRectangle(cornerRadius: 12).fill(LinearGradient(gradient: Gradient(colors: [.white,.gray]), startPoint: .top, endPoint: .bottom)))
                    .shadow(color: .red, radius: 6, x: 0, y: 6)
                Spacer()
                Text(hutong.destination)
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                .lineLimit(nil)
                Spacer()
                
            }
        .zIndex(0)
            .multilineTextAlignment(.center)
            .padding(.horizontal)
            .frame(width: 260, height: 400, alignment: .center)
            .background(LinearGradient(gradient: Gradient(colors: [Color(.red),Color(.gray)]), startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
            
           
        }
    }
}

struct HutongRankingView_Previews: PreviewProvider {
    static var previews: some View {
        HutongRankingView(hutong:hutongData[0])
    }
}
