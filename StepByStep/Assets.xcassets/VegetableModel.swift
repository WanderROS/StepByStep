//
//  VegetableModel.swift
//  StepByStep
//
//  Created by wander on 2021/11/28.
//  Copyright © 2021 cn.wanderros. All rights reserved.
//

import Foundation
import SwiftUI

struct Vegetable: Identifiable {
    let id = UUID()
    var title: String // 标题
    var headline: String // 提要
    var image: String // 图片文件名
    var gradientColors: [Color] // 背景渐变色
    var description: String // 描述信息
    var classfication:[String] // 分类信息
}

let vegetableData: [Vegetable] = [
    Vegetable(title: "茄子", headline: "可供食，肉沫茄子尤为好吃", image: "qiezi", gradientColors: [.blue,.green], description: "果可供蔬食。根、茎、叶入药，为收敛剂，有利尿之效，叶也可以作麻醉剂。种子为消肿药，也用为刺激剂，但容易引起胃弱及便秘，果生食可解食菌中毒。", classfication: ["茄科","被子植物","双子叶植物纲"]),
    Vegetable(title: "胡萝卜", headline: "炖汤美味", image: "carrot", gradientColors: [.blue,.green], description: "原产亚洲西部，阿富汗,10世纪时经伊朗传入欧洲大陆，15世纪英国已有栽培，16世纪传入美国。12世纪经伊朗传入中国，日本在16世纪从中国引入。", classfication: ["伞形科","胡萝卜族"])
]
