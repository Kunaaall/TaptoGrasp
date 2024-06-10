//
//  video1ViewController.swift
//  Tap to Grasp
//
//  Created by Kunal Saini on 14/07/23.
//

import UIKit
import AVKit
import AVFoundation

class video1ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func homeBtn(_ sender: UIBarButtonItem) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController?
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    
    @IBAction func nextBtn(_ sender: UIBarButtonItem) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "video2ViewController") as! video2ViewController?
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    
    @IBAction func play(_ sender: UIButton) {
        
        let player = AVPlayer (url: URL(filePath: Bundle.main.path(forResource: "OP", ofType: "mp4")!))
        let vc = AVPlayerViewController ( )
        vc.player = player
        present (vc,animated: true)
    }
    
    @IBAction func next(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "video2ViewController") as! video2ViewController?
        self.navigationController?.pushViewController(vc!, animated: true)
    }
}
