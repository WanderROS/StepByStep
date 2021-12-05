//
//  WebImage.swift
//  StepByStep
//
//  Created by wander on 2021/12/5.
//  Copyright © 2021 cn.wanderros. All rights reserved.
//

import SwiftUI

struct WebImage: View {
    
    @State private var uiImage: UIImage? = nil
    let placeholderImage = UIImage(systemName: "square.and.arrow.down.fill")!
    
    var body: some View {
        Image(uiImage: self.uiImage ?? placeholderImage)
            .resizable()
            .onAppear(perform: downloadWebImage)
            .frame(width: 50,height: 50,alignment: .center)
    }
    
    func downloadWebImage() {
        guard let url = URL(string: "https://picsum.photos/50/50?i=30") else {
            print("Invalid URL!")
            return
        }
        
        URLSession.shared.dataTask(with: url){
            (data,response,error) in
            if let data = data,let image = UIImage(data:data){
                self.uiImage = image
            } else {
                print("error!")
            }
        }.resume()
    }
}

struct WebImage_Previews: PreviewProvider {
    static var previews: some View {
        WebImage()
    }
}
