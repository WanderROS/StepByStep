//
//  SnackBarRatingView.swift
//  StepByStep
//
//  Created by wander on 2021/11/24.
//  Copyright © 2021 cn.wanderros. All rights reserved.
//

import SwiftUI

struct SnackBarRatingView: View {
    let snack: SnackBar
    var body: some View {
        HStack(alignment: .center, spacing: 5){
            ForEach(1...(snack.rating),id:\.self){
                _ in
                Image(systemName: "star.fill")
                    .font(.body)
                    .foregroundColor(.yellow)
            }
        }
    }
}

struct SnackBarRatingView_Previews: PreviewProvider {
    static var previews: some View {
        SnackBarRatingView(snack:snackBarData[0])
    }
}
