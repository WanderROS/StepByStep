//
//  ContentView.swift
//  StepByStep
//
//  Created by wander on 2021/11/22.
//  Copyright © 2021 cn.wanderros. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    enum DragState {
        case inactive
        case pressing
        case dragging(translation: CGSize)
        
        var translation: CGSize {
            switch self {
            case .inactive,.pressing:
                return .zero
            case .dragging(translation: let translation):
                return translation
            }
        }
        
        var isDragging: Bool {
            switch self{
            case .inactive,.pressing:
                return false
            case .dragging:
                return true
            }
        }
        var isPressing: Bool {
            switch self {
            case .pressing,.dragging:
                return true
            case .inactive:
                return false
            }
        }
    }
    
    @State var showAlert = false
    @State var showGuideView = false
    @State var showInfoView = false
    @State var drageState: DragState = .inactive
    var cardViews: [CardView] = {
        var views = [CardView]()
        
        for index in 0..<2 {
            views.append(CardView(photo: inHeartData[index]))
        }
        return views
    }()
    
    var body: some View {
        
        VStack {
            HeaderView(showGuideView: $showGuideView, showInfoView: $showInfoView)
                .opacity(drageState.isDragging ? 0.0 : 1.0)
                .animation(.default)
            Spacer()
            ZStack {
                ForEach(cardViews) {
                    cardView in
                    cardView
                        .zIndex(self.isTopCard(cardView: cardView) ? 1 : 0)
                        .gesture(
                            LongPressGesture(minimumDuration: 0.01)
                                .sequenced(before: DragGesture())
                            
//                                .updating(self.$drageState, body: {
//                                    (value,state,translation) in
//                                    switch value {
//                                    case .first(true):
//                                        state = .pressing
//                                    case .second(true,let drag):
//                                        state = .dragging(translation:drag?.translation ?? .zero)
//                                    default:
//                                        break
//                                    }
//                                })
                        )
                }
            }
            .padding(.horizontal)
            Spacer()
            FooterView(showHeartAlert: $showAlert)
                .opacity(drageState.isDragging ? 0.0 : 1.0)
                .animation(.default)
        }
        .alert(isPresented: $showAlert){
            Alert(title: Text("成功"), message: Text("希望你和小伙伴可以度过一段美好的时光"), dismissButton: .default(Text("Have a Good Time")))
        }
    }
    
    
    private func isTopCard(cardView: CardView) -> Bool {
        guard let index = cardViews.firstIndex(where: {$0.id == cardView.id}) else {
            return false
        }
        return index == 0
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
