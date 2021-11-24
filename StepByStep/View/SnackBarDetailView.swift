//
//  SnackBarDetailView.swift
//  StepByStep
//
//  Created by wander on 2021/11/24.
//  Copyright © 2021 cn.wanderros. All rights reserved.
//

import SwiftUI

struct SnackBarDetailView: View {
    let snack: SnackBar
    @State private var pulsate: Bool = false
    let hapticImpact = UIImpactFeedbackGenerator(style: .heavy)
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        ScrollView(.vertical,showsIndicators: false){
            VStack(alignment: .center, spacing: 0) {
                Image(snack.image)
                .resizable()
                .scaledToFit()
                
                Group {
                    Text(snack.title)
                        .font(.system(.largeTitle, design: .serif))
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .foregroundColor(.orange)
                        .padding(.top,10)
                    
                    SnackBarRatingView(snack: snack)
                    SnackBarInfoView(snack: snack)
                    
                    Text("美食介绍")
                        .fontWeight(.bold)
                    .modifier(TitleModifier())
                    
                    VStack(alignment: .leading, spacing: 5) {
                        ForEach(snack.introduction,id:\.self) {
                            item in
                            VStack(alignment: .leading, spacing: 5){
                                Text(item)
                                    .font(.footnote)
                                    .multilineTextAlignment(.leading)
                                Divider()
                            }
                        }
                    }
                    Text("制作方法")
                        .fontWeight(.bold)
                    .modifier(TitleModifier())
                    
                    ForEach(snack.method,id:\.self) {
                        item in
                        VStack(alignment: .center, spacing: 5){
                            Image(systemName: "chevron.down.circle")
                            .resizable()
                                .frame(width: 42, height: 42, alignment: .center)
                                .font(Font.title.weight(.ultraLight))
                                .foregroundColor(.red)
                            Text(item)
                            .lineLimit(nil)
                                .multilineTextAlignment(.center)
                                .font(.system(.body,design: .serif))
                                .frame(minHeight:100)
                        }
                    }
                }
                .padding(.horizontal,24)
                .padding(.vertical,12)
            }
        }
        .edgesIgnoringSafeArea(.all)
    .overlay(
        HStack {
            Spacer()
            VStack{
                Button(action: {
                    self.presentationMode.wrappedValue.dismiss()
                    self.hapticImpact.impactOccurred()
                }, label:{
                    Image(systemName: "chevron.down.circle.fill")
                        .font(.title)
                        .foregroundColor(.white)
                    .shadow(radius: 4)
                        .opacity(self.pulsate ? 1 : 0.8)
                        .scaleEffect(self.pulsate ? 1.2 : 0.8, anchor: .center)
                    .animation(
                        Animation.easeInOut(duration: 1.5).repeatForever(autoreverses: true)
                    )
                })
                .padding(24)
                    .padding(.trailing,20)
                    .padding(.top,24)
                Spacer()
            }
        }
        )
            .onAppear(){
                self.pulsate.toggle()
        }
        
        
    }
}

struct SnackBarDetailView_Previews: PreviewProvider {
    static var previews: some View {
        SnackBarDetailView(snack:snackBarData[0])
    }
}
