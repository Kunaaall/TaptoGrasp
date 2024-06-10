//
//  video3ViewController.swift
//  Tap to Grasp
//
//  Created by Kunal Saini on 14/07/23.
//

import UIKit
import AVKit

class video3ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func prevBtn(_ sender: UIBarButtonItem) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "video2ViewController") as! video2ViewController?
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    
    @IBAction func nextBtn(_ sender: UIBarButtonItem) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "video4ViewController") as! video4ViewController?
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    
    @IBAction func play(_ sender: UIButton) {
        
        let player = AVPlayer (url: URL(filePath: Bundle.main.path(forResource: "OP", ofType: "mp4")!))
        let vc = AVPlayerViewController ( )
        vc.player = player
        present (vc,animated: true)
    }
    
    @IBAction func next(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "video4ViewController") as! video4ViewController?
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    
}
