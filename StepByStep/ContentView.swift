//
//  ContentView.swift
//  StepByStep
//
//  Created by wander on 2021/11/22.
//  Copyright © 2021 cn.wanderros. All rights reserved.
//

import SwiftUI
import SVEVideoUI
import AVFoundation

struct ContentView: View {
    var videoURL =  URL(string: "http://clips.vorwaerts-gmbh.de/big_buck_bunny.mp4")!
    
    struct Constants {
        static let backAndForwardSeconds =  5.0
    }
    @State var showsControls = true
    @State var videoGravity = AVLayerVideoGravity.resizeAspect
    @State var loop = false
    @State var isMuted = true
    @State var isPlaying = true
    
    @State var startVideoSeconds:Double = 0.0
    
    @State var backInSeconds:Double = 0.0
    @State var forwardInSeconds:Double = 0.0
    
    @State var lastPlayInSeconds:Double = 0.0
    
    var body: some View {
        ScrollView {
            VStack() {
                Video(url: videoURL)
                    .isPlaying($isPlaying)
                    .isMuted($isMuted)
                    .playbackControls(showsControls)
                    .loop($loop)
                    .videoGravity(videoGravity)
                    .frame(width: nil, height: CGFloat(exactly:300), alignment: .center)
                
                Group() {
                    Toggle(isOn: $showsControls ) {
                        Text("Show Controls")
                    }
                    Toggle(isOn: $loop ) {
                        Text("Loop")
                    }
                    Toggle(isOn: $isMuted ) {
                        Text("Muted")
                    }
                    Toggle(isOn: $isPlaying ) {
                        Text("Is Playing")
                    }
                    Picker("Video Gravity", selection: $videoGravity) {
                        Text(AVLayerVideoGravity.resizeAspect.rawValue.replacingOccurrences(of: "AVLayerVideoGravity", with: "")).tag(AVLayerVideoGravity.resizeAspect)
                        Text(AVLayerVideoGravity.resize.rawValue.replacingOccurrences(of: "AVLayerVideoGravity", with: "")).tag(AVLayerVideoGravity.resize)
                        Text(AVLayerVideoGravity.resizeAspectFill.rawValue.replacingOccurrences(of: "AVLayerVideoGravity", with: "")).tag(AVLayerVideoGravity.resizeAspectFill)
                    }.pickerStyle(SegmentedPickerStyle())
                    
                    HStack {
                        Button(action: {
                            print("Back pressed")
                            self.backInSeconds = Constants.backAndForwardSeconds
                        }) {
                            Image(systemName: "gobackward.minus")
                                .resizable()
                                .frame(width: 30, height: 30)
                        }
                        .frame(width: 50, height: 50)
                        
                        Button(action: {
                            if self.isPlaying {
                                print("Pressed pause at: \(self.lastPlayInSeconds)")
                                self.isPlaying = false
                            }
                            else {
                                print("Pressed play")
                                self.isPlaying = true
                            }
                        }) {
                            if isPlaying {
                                Image(systemName: "pause")
                                    .resizable()
                                    .frame(width: 25, height: 30)
                                
                            }
                            else {
                                Image(systemName: "play.fill")
                                    .resizable()
                                    .frame(width: 25, height: 30)
                                
                            }
                        }
                        .frame(width: 50, height: 50)
                        
                        Button(action: {
                            print("Forward pressed")
                            self.forwardInSeconds = Constants.backAndForwardSeconds
                        }) {
                            Image(systemName: "goforward.plus")
                                .resizable()
                                .frame(width: 30, height: 30)
                        }
                        .frame(width: 50, height: 50)
                        
                    }.padding(.top)
                }.padding(.horizontal)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
