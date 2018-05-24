//
//  ViewController.swift
//  Quiz
//
//  Created by mac on 4/5/18.
//  Copyright © 2018 Devstorm. All rights reserved.
//

import UIKit

class QuizVC: UIViewController {
    
    let allQuestions = QuestionBank()
    var currentQuestionIndex = 0
    var pickedAnswer = 0
    var score = 0
    var subject: String = ""
    
    @IBOutlet weak var answer1: UIButton!
    @IBOutlet weak var answer2: UIButton!
    @IBOutlet weak var answer3: UIButton!
    @IBOutlet weak var answer4: UIButton!
    @IBOutlet weak var questionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    func updateUI() {
        
        if subject == "Mathematics" {
            questionLabel.text = allQuestions.mathList[currentQuestionIndex].questionText
        } else {
            questionLabel.text = allQuestions.list[currentQuestionIndex].questionText
        }
        
    }
    
    func nextQuestion() {
        currentQuestionIndex += 1
    }
    
    func correctAnswer() {
        if pickedAnswer == allQuestions.list[currentQuestionIndex].correctAnswer {
            score += 1
        } else {
            
        }
    }
    
    @IBAction func answerBtnWasPressed(_ sender: AnyObject) {
        if sender.tag == 1 {
            pickedAnswer = 1
        }
        else if sender.tag == 2 {
            pickedAnswer = 2
        }
        else if sender.tag == 3 {
            pickedAnswer = 3
        }
        else if sender.tag == 4 {
            pickedAnswer = 4
        }
        updateUI()
        nextQuestion()
    }
    
}

