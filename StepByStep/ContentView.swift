//
//  ContentView.swift
//  StepByStep
//
//  Created by wander on 2021/11/22.
//  Copyright © 2021 cn.wanderros. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var secured = false
    @State var password = ""
    
    var body: some View {
        
        VStack {
            WebImage()
            HStack {
                Text("密码：").frame(width: 50, alignment: .leading)
                    .padding(.leading,30)
                if self.secured
                { TextField("Password",text: self.$password).padding(.horizontal,5)
                    .frame(width: UIScreen.main.bounds.width - 80,height: 50)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .background(Color.white)
                    .cornerRadius(25)
                    
                } else {
                    SecureField("Password",text: self.$password).padding(.horizontal,5)
                        .frame(width: UIScreen.main.bounds.width - 80,height: 50)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .background(Color.white)
                        .cornerRadius(25)
                    
                }
                Button(action: {self.secured.toggle()}) {
                    Image(systemName: self.secured ? "eye.fill": "eye.slash.fill")
                        .frame(width: 34, height: 34, alignment: .center)
                        .foregroundColor((self.secured == true) ? Color.green : Color.secondary)
                } .offset(x: -50
                    , y: 0)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
