//
//  ViewController.swift
//  SampleAVPlayer
//
//  Created by Admin on 08/03/22.
//

import UIKit
import AVFoundation
import AVKit

class ViewController: UIViewController {

    @IBOutlet weak var playBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func playBtnPressed(_ sender: Any) {
        let videoUrl = URL(string: "https://storage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4")
        let videoPlayer = AVPlayer(url: videoUrl!)
        let controller = AVPlayerViewController()
        controller.player = videoPlayer
        
        present(controller, animated: true){
            videoPlayer.play()
        }
    }
    
}

