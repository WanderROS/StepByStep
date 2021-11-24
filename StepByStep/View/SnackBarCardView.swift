//
//  SnackBarCardView.swift
//  StepByStep
//
//  Created by wander on 2021/11/24.
//  Copyright © 2021 cn.wanderros. All rights reserved.
//

import SwiftUI

struct SnackBarCardView: View {
    let snack: SnackBar
    let hapticImpact = UIImpactFeedbackGenerator(style: .heavy)
    @State private var showModal: Bool = false
    var body: some View {
        VStack {
            Image(snack.image)
                .resizable()
                .scaledToFit()
                .overlay(
                    HStack{
                        Spacer()
                        VStack{
                            Image(systemName: "bookmark")
                                .font(Font.title.weight(.light))
                                .foregroundColor(.white)
                                .imageScale(.small)
                                .shadow(color: Color("ColorBlackTransparentLight"), radius: 2, x: 0, y: 0)
                                .padding(.trailing,20)
                                .padding(.top,20)
                            Spacer()
                        }
                    }
            )
            VStack(alignment: .leading, spacing: 12){
                Text(snack.title)
                    .font(.system(.title,design:.serif))
                    .fontWeight(.bold)
                    .foregroundColor(.orange)
                    .lineLimit(1)
                
                Text(snack.headline)
                    .font(.system(.body,design:.serif))
                    .foregroundColor(.gray)
                
                SnackBarRatingView(snack: snack)
                
                SnackBarInfoView(snack: snack)
                
            }
            .padding()
            .padding(.bottom,12)
            
        }
        .background(Color.white)
        .cornerRadius(12)
        .shadow(color: Color("ColorBlackTransparentDark"), radius: 8, x: 0, y: 0)
        .onTapGesture {
            self.hapticImpact.impactOccurred()
            self.showModal = true
        }
        .sheet(isPresented: $showModal){
            SnackBarDetailView(snack: self.snack)
        }
        
        
    }
    
}

struct SnackBarCardView_Previews: PreviewProvider {
    static var previews: some View {
        SnackBarCardView(snack: snackBarData[0])
    }
}
