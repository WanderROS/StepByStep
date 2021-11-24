//
//  SnackBarInfoView.swift
//  StepByStep
//
//  Created by wander on 2021/11/24.
//  Copyright © 2021 cn.wanderros. All rights reserved.
//

import SwiftUI

struct SnackBarInfoView: View {
    let snack: SnackBar
    var body: some View {
        HStack(alignment: .center, spacing: 12) {
            HStack(alignment: .center, spacing: 2) {
                Image(systemName: "person.3")
                Text("可用餐人数：\(snack.serves)")
            }
            HStack(alignment: .center, spacing: 2) {
                Image(systemName: "clock")
                Text("备时：\(snack.preparation)")
            }
            HStack(alignment: .center, spacing: 2) {
                Image(systemName: "flame")
                Text("热度：\(snack.hot)")
            }
        }
        .font(.footnote)
        .foregroundColor(.gray)
    }
}

struct SnackBarInfoView_Previews: PreviewProvider {
    static var previews: some View {
        SnackBarInfoView(snack: snackBarData[0])
    }
}
