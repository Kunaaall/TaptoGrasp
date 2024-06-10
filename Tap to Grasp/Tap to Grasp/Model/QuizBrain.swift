//
//  QuizBrain.swift
//  Tap to Grasp
//
//  Created by Kunal Saini on 01/08/23.
//

import Foundation
import UIKit

struct QuizBrain {
    
    let questions = [
        Question(text: "Mouthwash should be used", ans: "After brushing", color: UIColor.black),
        Question(text: "How many teeth exist (including wisdom teeth) in the normal adult mouth?", ans: "32", color: UIColor.black),
        Question(text: "How often should a toothbrush be changed?", ans: "Once every two or three months", color: UIColor.black),
        Question(text: "How long should you brush your teeth per session?", ans: "2 minutes", color: UIColor.black),
        Question(text: "What age should tooth brushing be started?", ans: "When first tooth erupts", color: UIColor.black),
        Question(text: "What's the best way to store your toothbrush?", ans: "Standing it upright to air dry", color: UIColor.black)
    ]
    
    let options = [
        Option(o1: "Before brushing", o2: "After brushing", o3: "Both", o4: "Niether"),
        Option(o1: "18", o2: "30", o3: "32", o4: "34"),
        Option(o1: "Once per month", o2: "At the close of every illness", o3: "Once every two or three months", o4: "Once per year if capped every day"),
        Option(o1: "45 secs", o2: "2 minutes", o3: "5 minutes", o4: "1 minute"),
        Option(o1: "At 3 years", o2: "At 6 years", o3: "When all teeth erupt", o4: "When first tooth erupts"),
        Option(o1: "Laying it down to air dry", o2: "Standing it upright in a container", o3: "Standing it upright to air dry", o4: "Laying it down in a container")
    ]
    
    var numQuestion = 0
    var score = 0
    
    mutating func checkAnswer(userAnswer: String) -> Bool{
        if userAnswer == questions[numQuestion].ans
        {
            score += 1
            return true
        }
        else
        {
            return false
        }
    }
    
    func getScore() -> Int {
        return score
    }
    
    func getTextQuestion() -> String{
        return questions[numQuestion].text
    }
    
    func getprogress() -> Float{
        let progress = Float(numQuestion + 1)/Float(questions.count)
        return progress
    }
    
    func getColor() -> UIColor {
        return questions[numQuestion].color
    }
    
    mutating func nextQuestion() -> Bool {
        if numQuestion + 1 < questions.count{
            numQuestion += 1
            return false
        }
        else{
            numQuestion = 0
            return true
        }
    }
    
    func getOption1() -> String {
        return options[numQuestion].o1
    }
    
    func getOption2() -> String {
        return options[numQuestion].o2
    }
    
    func getOption3() -> String {
        return options[numQuestion].o3
    }
    
    func getOption4() -> String {
        return options[numQuestion].o4
    }
    
}
