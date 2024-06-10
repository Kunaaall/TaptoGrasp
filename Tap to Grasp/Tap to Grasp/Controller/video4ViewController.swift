//
//  video4ViewController.swift
//  Tap to Grasp
//
//  Created by Kunal Saini on 14/07/23.
//

import UIKit
import AVKit

class video4ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func prevBtn(_ sender: UIBarButtonItem) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "video3ViewController") as! video3ViewController?
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    
    @IBAction func play(_ sender: UIButton) {
        
        let player = AVPlayer (url: URL(filePath: Bundle.main.path(forResource: "OP", ofType: "mp4")!))
        let vc = AVPlayerViewController ( )
        vc.player = player
        present (vc,animated: true)
    }
    
    
    @IBAction func Finish(_ sender: UIButton) {
        let alert = UIAlertController(title: "Oral Health Videos", message: "Finshed!!", preferredStyle: .alert)
        let continueAction = UIAlertAction(title: "Quiz", style: .default){ _ in
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "QuizViewController") as! QuizViewController?
            self.navigationController?.pushViewController(vc!, animated: true)
        }
        let okAction = UIAlertAction (title: "Home", style: .cancel) { _ in
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "OptionViewController") as! OptionViewController?
            self.navigationController?.pushViewController(vc!, animated: true)
        }
        
        alert.addAction (okAction)
        alert.addAction(continueAction)
        present (alert, animated: true)
        
    }
    
    
}
