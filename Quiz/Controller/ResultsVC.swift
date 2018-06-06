//
//  ResultsVC.swift
//  Quiz
//
//  Created by mac on 4/10/18.
//  Copyright © 2018 Devstorm. All rights reserved.
//

import UIKit

class ResultsVC: UIViewController, UICircularProgressRingDelegate {
    
    var score = 0
    
    var wrongQuestions: [String]?
    var rightAnswers: [String]?
    
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var scoreLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scoreLabel.text = "\(score)/10"
        collectionView.dataSource = self
        
        }
    
    @IBAction func exit(_ sender: AnyObject) {
        performSegue(withIdentifier: "unwindSegueToVC1", sender: self)
    }
    
}

extension ResultsVC: UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return (wrongQuestions?.count)!
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ResultCell", for: indexPath) as? ResultCell
            cell?.answerLabel.text = rightAnswers![indexPath.item]
            cell?.questionLabel.text = wrongQuestions![indexPath.item]
        return cell!
    }
}


