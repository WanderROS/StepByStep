//
//  ContentView.swift
//  StepByStep
//
//  Created by wander on 2021/11/22.
//  Copyright © 2021 cn.wanderros. All rights reserved.
//

import SwiftUI

struct ContentView: View {
  @State var webViewStore = WebViewStore()
  
  var body: some View {
    NavigationView {
      WebView(webView: webViewStore.webView)
//        .navigationBarTitle(Text(verbatim: webViewStore.title ?? ""), displayMode: .inline)
//        .navigationBarItems(trailing: HStack {
//          Button(action: goBack) {
//            Image(systemName: "chevron.left")
//              .imageScale(.large)
//              .aspectRatio(contentMode: .fit)
//              .frame(width: 32, height: 32)
//          }.disabled(!webViewStore.canGoBack)
//          Button(action: goForward) {
//            Image(systemName: "chevron.right")
//              .imageScale(.large)
//              .aspectRatio(contentMode: .fit)
//              .frame(width: 32, height: 32)
//          }.disabled(!webViewStore.canGoForward)
//        })
    }.onAppear {
      self.webViewStore.webView.load(URLRequest(url: URL(string: "https://www.baidu.com")!))
    }
  }
  
  func goBack() {
    webViewStore.webView.goBack()
  }
  
  func goForward() {
    webViewStore.webView.goForward()
  }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
