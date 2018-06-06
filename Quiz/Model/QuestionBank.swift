//
//  QuestionBank.swift
//  Quiz
//
//  Created by mac on 4/10/18.
//  Copyright © 2018 Devstorm. All rights reserved.
//

import Foundation

class QuestionBank {
    
    var arrayOfSubjects = [[Question]]()
    
    var SAT = [Question]()
    var Mathematics = [Question]()
    var Physics = [Question]()
    var Chemistry = [Question]()
    var Biology = [Question]()
    
    
    init() {
        
        Mathematics.append(Question(questionText: "What's the capital of Switzerland?", answers: ["Geneva", "Zurich", "Brussels", "Switzerland no capital"], correctAnswer: 3, subjectIndex: 0))
        Mathematics.append(Question(questionText: "What's the capital of China?", answers: ["Hong Kong", "Bejjing", "Taiwan", "Shanghai"], correctAnswer: 1, subjectIndex: 0))
        Mathematics.append(Question(questionText: "What's the capital of Belgium?", answers: ["Stockholm", "Copenhagen", "Brussels", "Malmo"], correctAnswer: 2, subjectIndex: 0))
        
        arrayOfSubjects.append(Mathematics)
        arrayOfSubjects.append(SAT)
        arrayOfSubjects.append(Physics)
        arrayOfSubjects.append(Chemistry)
        arrayOfSubjects.append(Biology)

    }
    
}
