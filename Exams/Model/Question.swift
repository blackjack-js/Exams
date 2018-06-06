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
    var answers: [String]?
    var correctAnswer: Int?
    var subjectIndex: Int?
    
    init(questionText: String, answers: [String], correctAnswer: Int, subjectIndex: Int) {
        
        self.questionText = questionText
        self.correctAnswer = correctAnswer
        self.answers = answers
        self.subjectIndex = subjectIndex
    }
    
}
