//
//  SZAVPlayerConfig.swift
//  SZAVPlayer
//
//  Created by CaiSanze on 2020/1/6.
//

import UIKit
import AVKit

public struct VideoConfig {
    let url: URL
    let asset: AVAsset? = nil
}

public struct SZAVPlayerConfig {

    public var video: VideoConfig           // The URL value for playing.
    public var isVideo: Bool            // Is video or not.
    public var isVideoOutputEnabled: Bool           // Output video image function enabled or not.
    public var timeObserverInterval: Float64 = 1    // TimeObserver interval, default value is 1s.
    public var isLocalURL: Bool = false
    public var videoGravity: AVLayerVideoGravity = .resizeAspect

    public init(url: URL, isVideo: Bool = true, isVideoOutputEnabled: Bool = false) {
        self.video = .init(url: url)
        self.isVideo = isVideo
        self.isVideoOutputEnabled = isVideoOutputEnabled
    }

    public static var `default`: SZAVPlayerConfig {
        return SZAVPlayerConfig(url: URL(string: "fakeURL.com")!)
    }

}
