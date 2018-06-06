//
//  ViewController.swift
//  Quiz
//
//  Created by mac on 4/5/18.
//  Copyright © 2018 Devstorm. All rights reserved.
//

import UIKit

class QuestionsVC: UIViewController {
    
    var subjectIndex: Int?
    let allQuestions = QuestionBank()
    var currentQuestionIndex = 0
    var pickedAnswer = 0
    var score = 0
    
    var seconds = 60 * 8
    var timer = Timer()
    
    var wrongQuestions = [String]()
    var rightAnswer = [String]()
    
    @IBOutlet weak var answer1: UIButton!
    @IBOutlet weak var answer2: UIButton!
    @IBOutlet weak var answer3: UIButton!
    @IBOutlet weak var answer4: UIButton!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var questionNumberLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var questionBackground: UIView!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var exit: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        runTimer()
        prepareUI()
        answer1.titleLabel?.minimumScaleFactor = 0.5
        answer2.titleLabel?.minimumScaleFactor = 0.5
        answer3.titleLabel?.minimumScaleFactor = 0.5
        answer4.titleLabel?.minimumScaleFactor = 0.5
        answer1.titleLabel?.adjustsFontSizeToFitWidth = true
        answer2.titleLabel?.adjustsFontSizeToFitWidth = true
        answer3.titleLabel?.adjustsFontSizeToFitWidth = true
        answer4.titleLabel?.adjustsFontSizeToFitWidth = true

    }
    
    //MARK: - Flow
    
    func checkAnswer() {
        
        if pickedAnswer == allQuestions.arrayOfSubjects[subjectIndex!][currentQuestionIndex].correctAnswer!
        {
            
            score += 1
            
        } else {
            
            wrongQuestions.append(allQuestions.arrayOfSubjects[subjectIndex!][currentQuestionIndex].questionText!)
            rightAnswer.append(allQuestions.arrayOfSubjects[subjectIndex!][currentQuestionIndex].answers![allQuestions.arrayOfSubjects[subjectIndex!][currentQuestionIndex].correctAnswer!])
            
        }
        
    }
    
    func nextQuestion() {
        
        if currentQuestionIndex < allQuestions.arrayOfSubjects[subjectIndex!].count - 1 {
            
            currentQuestionIndex += 1
            
            questionLabel.text = allQuestions.arrayOfSubjects[subjectIndex!][currentQuestionIndex].questionText
            
            answer1.setTitle(allQuestions.arrayOfSubjects[subjectIndex!][currentQuestionIndex].answers?[0], for: .normal)
            answer2.setTitle(allQuestions.arrayOfSubjects[subjectIndex!][currentQuestionIndex].answers?[1], for: .normal)
            answer3.setTitle(allQuestions.arrayOfSubjects[subjectIndex!][currentQuestionIndex].answers?[2], for: .normal)
            answer4.setTitle(allQuestions.arrayOfSubjects[subjectIndex!][currentQuestionIndex].answers?[3], for: .normal)
            
            updateUI()
            
        } else {
            
            performSegue(withIdentifier: "GoToResults", sender: self)
            
        }
        
    }
    
    func prepareUI() {
        
        questionBackground.tintColor = UIColor(red:0.00, green:0.69, blue:0.39, alpha:1.0)
        
        scoreLabel.text = "Score: \(score)"
        
        questionLabel.text = allQuestions.arrayOfSubjects[subjectIndex!][currentQuestionIndex].questionText
        
        answer1.setTitle(allQuestions.arrayOfSubjects[subjectIndex!][currentQuestionIndex].answers?[0], for: .normal)
        answer2.setTitle(allQuestions.arrayOfSubjects[subjectIndex!][currentQuestionIndex].answers?[1], for: .normal)
        answer3.setTitle(allQuestions.arrayOfSubjects[subjectIndex!][currentQuestionIndex].answers?[2], for: .normal)
        answer4.setTitle(allQuestions.arrayOfSubjects[subjectIndex!][currentQuestionIndex].answers?[3], for: .normal)
        
    }
    
    func updateUI() {
        scoreLabel.text = "Score: \(score)"
        questionNumberLabel.text = "QUESTION \(currentQuestionIndex + 1) OUT OF \(allQuestions.arrayOfSubjects[subjectIndex!].count)"
        
        progressBar.setProgress(Float(currentQuestionIndex) / Float(allQuestions.arrayOfSubjects[subjectIndex!].count), animated: true)
    }
    
    //MARK: - Timer
    
    func runTimer() {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self,   selector: (#selector(self.updateTimer)), userInfo: nil, repeats: true)
    }
    
    @objc func updateTimer() {
        if seconds < 1 {
            timer.invalidate()
            performSegue(withIdentifier: "GoToResults", sender: self)
        } else {
            seconds -= 1
            timeLabel.text = timeString(time: TimeInterval(seconds))
        }
    }
    
    func timeString(time:TimeInterval) -> String {
        let hours = Int(time) / 3600
        let minutes = Int(time) / 60 % 60
        let seconds = Int(time) % 60
        return String(format:"%02i:%02i:%02i", hours, minutes, seconds)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? ResultsVC {
            destination.score = score
            destination.wrongQuestions = wrongQuestions
            destination.rightAnswers = rightAnswer
            }
        }
        
    
    @IBAction func exitBtn(_ sender: Any) {        
      
                self.dismiss(animated: true, completion: nil)
       
        }
        
    
    @IBAction func answer(_ sender: AnyObject) {
        
         if sender.tag == 1 {
            pickedAnswer = 0
        }
        else if sender.tag == 2 {
            pickedAnswer = 1
        }
        else if sender.tag == 3 {
            pickedAnswer = 2
        }
        else if sender.tag == 4 {
            pickedAnswer = 3
        }
        
        checkAnswer()
        nextQuestion()
    }
    
}

