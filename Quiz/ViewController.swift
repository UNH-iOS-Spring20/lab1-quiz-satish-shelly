//
//  ViewController.swift
//  Quiz
//
//  Created by Choudhary, Shelly on 2/5/20.
//  Copyright © 2020 Choudhary, Shelly. All rights reserved.
//

import UIKit
import os
class ViewController: UIViewController {
    let questions: [String] = [
        "What is the origin of corona virus?",
        "What is the location for very recent fire accidents?",
        "Which basket ball player recently died in plane crash?",
        "Who is the Prime Minister of India? "
    ]
    
    let answers: [String] = [
        "China",
        "Australia",
        "Kobe",
        "Narendra Modi Ji"
    ]
    
    var Index: Int = 0
    @IBOutlet  var nextquestion:  UILabel!
    @IBOutlet var nextanswer: UILabel!
    @IBAction func showNextQuestion(){
        Index+=1
        if(Index == questions.count){
            Index = 0
        }
        let question = questions[Index]
        nextquestion.text = question
        nextanswer.text = "???"
    }
    @IBAction func showNextAnswer(){
        let answer: String = answers[Index]
        nextanswer.text = answer
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let question: String = questions[Index]
        nextquestion.text = question
        os_log("I am in starting phase")
        // Do any additional setup after loading the view.
    }


}

