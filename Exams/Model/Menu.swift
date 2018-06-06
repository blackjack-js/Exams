//
//  MenuDataSource.swift
//  Quiz
//
//  Created by mac on 4/13/18.
//  Copyright © 2018 Devstorm. All rights reserved.
//

import UIKit

class Menu {
    
    let highscore = UserDefaults.standard.integer(forKey: "highscore")
    
    var subject = ""
    var questionsNumber = ""
    var time = ""
    var featuredImage: UIImage
    var color: UIColor
    var subjectIndex: Int
    
    init(subject: String, featuredImage: UIImage, color: UIColor, time: String, questionsNumber: String, subjectIndex: Int) {
        
        self.subject = subject
        self.featuredImage = featuredImage
        self.color = color
        self.time = time
        self.questionsNumber = questionsNumber
        self.subjectIndex = subjectIndex
    }
    
    static func fetchData() -> [Menu] {
        return [
            Menu(subject: "Mathematics", featuredImage: UIImage(named:"Math")!, color: UIColor(red:0.96, green:0.63, blue:0.13, alpha:1.0), time: "8:00", questionsNumber: "10 QUESTIONS", subjectIndex: 0),
            Menu(subject: "Chemistry", featuredImage: UIImage(named:"Chemistry")!, color: UIColor(red:0.58, green:0.06, blue:1.00, alpha:1.0), time: "8:00", questionsNumber: "10 QUESTIONS", subjectIndex: 1),
            Menu(subject: "Physics", featuredImage: UIImage(named:"Physics")!, color: UIColor(red:0.06, green:0.66, blue:1.00, alpha:1.0), time: "8:00", questionsNumber: "10 QUESTIONS", subjectIndex: 2),
            Menu(subject: "SAT", featuredImage: UIImage(named:"SAT")!, color: UIColor(red:0.07, green:0.78, blue:0.53, alpha:1.0), time: "8:00", questionsNumber: "10 QUESTIONS", subjectIndex: 3),
            Menu(subject: "Biology", featuredImage: UIImage(named:"Biology")!, color: UIColor(red:0.06, green:0.62, blue:0.86, alpha:1.0), time: "8:00", questionsNumber: "10 QUESTIONS", subjectIndex: 4)
        ]
    }
}
