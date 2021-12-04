//
//  ContentView.swift
//  StepByStep
//
//  Created by wander on 2021/11/22.
//  Copyright © 2021 cn.wanderros. All rights reserved.
//

import SwiftUI
import MDText
import Parma


struct ContentView: View {
    @State var showingPopup = true
    static let string =
        """
    # hello, This is Markdown Live Preview
    ----
    ## what is Markdown?
    see [Wikipedia](https://en.wikipedia.org/wiki/Markdown)
    > Markdown is a lightweight markup language, originally created by John Gruber and Aaron Swartz allowing people "to write using an easy-to-read, easy-to-write plain text format, then convert it to structurally valid XHTML (or HTML)".
    ----
    ## usage
    1. Write markdown text in this textarea.
    2. Click 'HTML Preview' button.
    ----
    ## markdown quick reference
    # headers
    *emphasis*
    **strong**
    * list
    >block quote
        code (4 spaces indent)
    [links](https://wikipedia.org)
    ----
    ## changelog
    * 17-Feb-2013 re-design
    ----
    ## thanks
    * [markdown-js](https://github.com/evilstreak/markdown-js)
    """
    var body: some View {
        ZStack{
            VStack{
                MDText(markdown: ContentView.string)
                Button(action: {
                    self.showingPopup = true
                }, label: {
                    Text("按钮")
                })
            }
        }
    

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
