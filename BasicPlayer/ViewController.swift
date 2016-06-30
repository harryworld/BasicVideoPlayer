//
//  ViewController.swift
//  BasicPlayer
//
//  Created by Harry Ng on 30/6/2016.
//  Copyright © 2016 STAY REAL LIMITED. All rights reserved.
//

import Cocoa
import AVKit
import AVFoundation

class ViewController: NSViewController {

    @IBOutlet weak var playerView: AVPlayerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        guard let url = NSURL(string: "https://devimages.apple.com.edgekey.net/samplecode/avfoundationMedia/AVFoundationQueuePlayer_HLS2/master.m3u8") else {
            return
        }
        
        let player = AVPlayer(URL: url)
        playerView.player = player
    }

    override var representedObject: AnyObject? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

