//
//  VideoPlayerView.swift
//  StepByStep
//
//  Created by wander on 2021/11/26.
//  Copyright © 2021 cn.wanderros. All rights reserved.
//

import SwiftUI
import AVKit

struct VideoPlayerView: View {
    var body: some View {
        VStack{
            Video(url:URL(string: "http://vfx.mtime.cn/Video/2019/06/29/mp4/190629004821240734.mp4")!)
                .frame(height: 300)
                .overlay(
                    Text("视频")
            )
            Spacer()
            Text("视频播放")
        }
        
    }
}

struct VideoPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        VideoPlayerView()
    }
}
