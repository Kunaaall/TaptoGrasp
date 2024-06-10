//
//  ViewController.swift
//  Tap to Grasp
//
//  Created by Kunal Saini on 07/07/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var welcomeView: UIImageView!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func startBtn(_ sender: UIButton) {
        let VC = self.storyboard?.instantiateViewController(withIdentifier: "OptionViewController") as! OptionViewController?
        self.navigationController?.pushViewController(VC!, animated: true)
    }
    
}

