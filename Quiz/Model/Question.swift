//
//  Question.swift
//  Quiz
//
//  Created by mac on 4/10/18.
//  Copyright © 2018 Devstorm. All rights reserved.
//

import Foundation

class Question {
    
    var questionText: String?
    var firstAnswer: String?
    var secondAnswer: String?
    var thirdAnswer: String?
    var fourthAnswer: String?
    var correctAnswer: Int?
    var enteredAnswer: String?
    var correctAnswerText: String?
    
    init(text: String, answer1: String, answer2: String, answer3: String, answer4: String, answer: Int) {
        questionText = text
        correctAnswer = answer
        firstAnswer = answer1
        secondAnswer = answer2
        thirdAnswer = answer3
        fourthAnswer = answer4
    }
    
    init(text: String, correctAnswer: String, inputAnswer: String) {
        questionText = text
        correctAnswerText = correctAnswer
        enteredAnswer = inputAnswer
    }
}
