//
//  Video.swift
//  StepByStep
//
//  Created by wander on 2021/11/26.
//  Copyright © 2021 cn.wanderros. All rights reserved.
//

import Foundation

struct VideoData: Codable,Identifiable {
    let id = UUID()
    let name: String
    let headline: String
}

let videoData: [VideoData] = [
    VideoData(name: "http://vfx.mtime.cn/Video/2019/06/29/mp4/190629004821240734.mp4", headline: "Smart Video")
]
