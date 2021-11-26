//
//  VideoPlayerHelper.swift
//  StepByStep
//
//  Created by wander on 2021/11/26.
//  Copyright © 2021 cn.wanderros. All rights reserved.
//

import Foundation
import AVKit

var videoPlayer: AVPlayer?

func playVideo(url: URL) -> AVPlayer{
    videoPlayer = AVPlayer(url: url)
    videoPlayer?.play()
    return videoPlayer!
}
