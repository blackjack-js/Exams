//
//  MenuDataSource.swift
//  Quiz
//
//  Created by mac on 4/13/18.
//  Copyright © 2018 Devstorm. All rights reserved.
//

import UIKit

class Menu {
    
    var highScore = ResultsVC()
    
    var subject = ""
    var questionsNumber = ""
    var time = ""
    var featuredImage: UIImage
    var color: UIColor
    var subjectIndex: Int
    var progressBar: Int
    
    init(subject: String, featuredImage: UIImage, color: UIColor, time: String, questionsNumber: String, subjectIndex: Int, progressBar: Int) {
        
        self.subject = subject
        self.featuredImage = featuredImage
        self.color = color
        self.time = time
        self.questionsNumber = questionsNumber
        self.subjectIndex = subjectIndex
        self.progressBar = progressBar
    }
    
    static func fetchData() -> [Menu] {
        return [
            Menu(subject: "Mathematics", featuredImage: UIImage(named:"Math")!, color: UIColor(red:1.00, green:0.06, blue:0.57, alpha:1.0), time: "30:00", questionsNumber: "0/100", subjectIndex: 0, progressBar: 0),
            Menu(subject: "Chemistry", featuredImage: UIImage(named:"Chemistry")!, color: UIColor(red:0.58, green:0.06, blue:1.00, alpha:1.0), time: "30:00", questionsNumber: "0/100", subjectIndex: 1, progressBar: 0),
            Menu(subject: "Physics", featuredImage: UIImage(named:"Physics")!, color: UIColor(red:0.06, green:0.66, blue:1.00, alpha:1.0), time: "30:00", questionsNumber: "0/100", subjectIndex: 2, progressBar: 0),
            Menu(subject: "SAT", featuredImage: UIImage(named:"SAT")!, color: UIColor(red:0.06, green:1.00, blue:0.77, alpha:1.0), time: "30:00", questionsNumber: "0/100", subjectIndex: 3, progressBar: 0),
            Menu(subject: "Biology", featuredImage: UIImage(named:"Biology")!, color: UIColor(red:1.00, green:0.06, blue:0.57, alpha:1.0), time: "30:00", questionsNumber: "0/100", subjectIndex: 4, progressBar: 0)
        ]
    }
}
