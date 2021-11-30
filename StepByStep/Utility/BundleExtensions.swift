//
//  BundleExtensions.swift
//  StepByStep
//
//  Created by Wander on 2021/11/30.
//  Copyright © 2021 cn.wanderros. All rights reserved.
//

import Foundation
import SwiftUI

extension Bundle {
    func decode<T: Codable>(_ file: String) -> T {
      // 1. 载入本地 json 文件
      guard let url = self.url(forResource: file,withExtension: nil) else {
        fatalError("载入本地文件 \(file) 失败！")
      }
      
      // 2.为数据创建一个属性
      guard let data = try? Data(contentsOf: url) else {
        fatalError("从 Bundle 读取 \(file) 中的数据失败！")
      }
      
      // 3. 创建 decode
      let decode = JSONDecoder()
      
      // 4. 为解码数据创建一个属性
      guard let loaded = try? decode.decode(T.self, from: data) else {
        fatalError("从 Bundle 解析 \(file) 中的数据失败！")
      }
      
      // 5.返回只读属性的数据
      return loaded
    }
}
