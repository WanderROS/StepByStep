//
//  HutongView.swift
//  StepByStep
//
//  Created by Wander on 2021/11/24.
//  Copyright © 2021 cn.wanderros. All rights reserved.
//

import SwiftUI

struct HutongView: View {
    let hutongs = hutongData
    var body: some View {
        ScrollView(.horizontal,showsIndicators: false){
            VStack{
                HStack(alignment: .top, spacing: 25) {
                    ForEach(hutongs){
                        item in
                        HutongRankingView(hutong: item)
                            .frame( alignment: .center)
                    }
                }
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct HutongView_Previews: PreviewProvider {
    static var previews: some View {
        HutongView()
    }
}
