//
//  AddView.swift
//  StepByStep
//
//  Created by wander on 2021/12/11.
//  Copyright © 2021 cn.wanderros. All rights reserved.
//

import SwiftUI

struct AddView: View {
    
    // MARK:- variables
    @State var isAnimating: Bool = false
    
    // MARK:- views
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            ZStack {
                ExpandingView(expand: $isAnimating, direction: .bottom, symbolName: "heart.fill",myfunc: {
                    print("amplify clicked")
                })
                ExpandingView(expand: $isAnimating, direction: .left, symbolName: "heart",myfunc: {
                    print("heart clicked")
                })
                ExpandingView(expand: $isAnimating, direction: .top, symbolName: "photo",myfunc: {
                    print("photo clicked")
                })
                ExpandingView(expand: $isAnimating, direction: .right, symbolName: "mic.fill",myfunc: {
                    if isAnimating {
                        print("mic clicked")
                    }
                    
                })
                Image(systemName: "plus")
                    .font(.system(size: 40, weight:  self.isAnimating ? .regular : .semibold, design: .rounded))
                    .foregroundColor(self.isAnimating ? Color.white : Color.black)
                    .rotationEffect(self.isAnimating ? .degrees(45) : .degrees(0))
                    .scaleEffect(self.isAnimating ? 3 : 1)
                    .opacity(self.isAnimating ? 0.5 : 1)
                    .animation(Animation.spring(response: 0.35, dampingFraction: 0.85, blendDuration: 1))
                    .onTapGesture {
                        self.isAnimating.toggle()
                    }
            }.frame(height: 300)
            .padding()
        }
    }
}

struct AddButton_Previews: PreviewProvider {
    static var previews: some View {
        AddView()
    }
}


