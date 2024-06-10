//
//  QuizViewController.swift
//  Tap to Grasp
//
//  Created by Kunal Saini on 27/07/23.
//

import UIKit
import Foundation

class QuizViewController: UIViewController {
    
    
    @IBOutlet weak var progressQuiz: UIProgressView!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    
    var bq = QuizBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        progressQuiz.progress = bq.getprogress()
        
        questionLabel.text = bq.getTextQuestion()
        questionLabel.textColor = bq.getColor()
        
        scoreLabel.text = "Score : \(bq.score) pts."
        
        button1.setTitle(bq.getOption1(), for: .normal)
        button2.setTitle(bq.getOption2(), for: .normal)
        button3.setTitle(bq.getOption3(), for: .normal)
        button4.setTitle(bq.getOption4(), for: .normal)
    }
    
    @IBAction func userAnswerTap(_ sender: UIButton) {
        
        let user = sender.titleLabel?.text ?? "true"
        
        let rightanswer = bq.checkAnswer(userAnswer: user)
        
        if rightanswer{
            sender.backgroundColor = UIColor.systemGreen
        }
        else{
            sender.backgroundColor = UIColor.systemRed
        }
        button1.isEnabled = false
        button2.isEnabled = false
        button3.isEnabled = false
        button4.isEnabled = false
        
        if bq.nextQuestion () {
            let alert = UIAlertController(title: "Quiz Report", message: "Thanks! Your score is \(bq.getScore()) pts.", preferredStyle: .alert)
            let okAction = UIAlertAction (title: "Exit", style: .cancel) { _ in
                exit (0)
            }
            let homeAction = UIAlertAction (title: "Home", style: .default) { _ in
                let vc = self.storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController?
                self.navigationController?.pushViewController(vc!, animated: true)
            }
            
            alert.addAction (okAction)
            alert.addAction(homeAction)
            present (alert, animated: true)
        }
        else {
            Timer.scheduledTimer (timeInterval: 1.5, target: self, selector: #selector (changeQuestion), userInfo: nil,repeats: false)
        }
        
    }
    
    
    @objc func changeQuestion(){
        
        button1.isEnabled = true
        button2.isEnabled = true
        button3.isEnabled = true
        button4.isEnabled = true
        
        questionLabel.text = bq.getTextQuestion()
        questionLabel.textColor = bq.getColor()
        
        scoreLabel.text = "Score : \(bq.score) pts."
        
        button1.setTitle(bq.getOption1(), for: .normal)
        button2.setTitle(bq.getOption2(), for: .normal)
        button3.setTitle(bq.getOption3(), for: .normal)
        button4.setTitle(bq.getOption4(), for: .normal)
        
        progressQuiz.progress = bq.getprogress()
        
        button1.backgroundColor = UIColor.white
        button2.backgroundColor = UIColor.white
        button3.backgroundColor = UIColor.white
        button4.backgroundColor = UIColor.white
        
    }
    @IBAction func home(_ sender: UIBarButtonItem) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController?
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    
    
}
