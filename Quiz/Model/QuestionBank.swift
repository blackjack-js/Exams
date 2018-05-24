//
//  QuestionBank.swift
//  Quiz
//
//  Created by mac on 4/10/18.
//  Copyright © 2018 Devstorm. All rights reserved.
//

import Foundation

class QuestionBank {
    var list = [Question]()
    var mathList = [Question]()
    
    init() {
        list.append(Question(text: "Hello this is the first question", answer1: "bb", answer2: "dd", answer3: "cc", answer4: "rr", answer: 3))
        list.append(Question(text: "Hello this is the second question", answer1: "bb", answer2: "dd", answer3: "cc", answer4: "rr", answer: 3))
        list.append(Question(text: "Hello this is the third question", answer1: "bb", answer2: "dd", answer3: "cc", answer4: "rr", answer: 3))
        list.append(Question(text: "Hello this is the fourth question", answer1: "bb", answer2: "dd", answer3: "cc", answer4: "rr", answer: 3))
        list.append(Question(text: "Hello this is the fifth question", answer1: "bb", answer2: "dd", answer3: "cc", answer4: "rr", answer: 3))
        list.append(Question(text: "Hello this is the sixth question", answer1: "bb", answer2: "dd", answer3: "cc", answer4: "rr", answer: 3))
        list.append(Question(text: "hey there whats ur name", correctAnswer: "john", inputAnswer: "h"))
        
        mathList.append(Question(text: "Math Math", answer1: "bb", answer2: "dd", answer3: "cc", answer4: "rr", answer: 3))
        
        mathList.append(Question(text: "Math 59483848348", answer1: "bb", answer2: "dd", answer3: "cc", answer4: "rr", answer: 3))
        
        mathList.append(Question(text: "Math 433443", answer1: "bb", answer2: "dd", answer3: "cc", answer4: "rr", answer: 3))
        
        mathList.append(Question(text: "Math wefwef", answer1: "bb", answer2: "dd", answer3: "cc", answer4: "rr", answer: 3))
        
        mathList.append(Question(text: "Math wrfo23of23f", answer1: "bb", answer2: "dd", answer3: "cc", answer4: "rr", answer: 3))
        
        mathList.append(Question(text: "Math oiwjfewioefwefe", answer1: "bb", answer2: "dd", answer3: "cc", answer4: "rr", answer: 3))
    }
    
}
