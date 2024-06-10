//
//  OptionViewController.swift
//  Tap to Grasp
//
//  Created by Kunal Saini on 14/07/23.
//

import UIKit

class OptionViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func homeBtn(_ sender: UIBarButtonItem) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController?
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    
    @IBAction func videoBtn(_ sender: UIButton) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "video1ViewController") as! video1ViewController?
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    
    @IBAction func quizBtn(_ sender: UIButton) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "QuizViewController") as! QuizViewController?
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    
}
