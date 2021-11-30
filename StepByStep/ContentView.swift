//
//  ContentView.swift
//  StepByStep
//
//  Created by wander on 2021/11/22.
//  Copyright © 2021 cn.wanderros. All rights reserved.
//

import SwiftUI
import AVKit

struct ContentView: View {
    var body: some View {
        TabView {
            ThroughView()
                .tabItem {
                    Image(systemName: "square.grid.2x2")
                    Text("浏览")
                }
            VideoPlayerView()
                .tabItem {
                    Image(systemName: "play.rectangle")
                    Text("视频")
                }
            MapView()
                .tabItem {
                    Image(systemName: "map")
                    Text("位置")
                }
            GalleryView()
                .tabItem {
                    Image(systemName: "photo")
                    Text("照片")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
