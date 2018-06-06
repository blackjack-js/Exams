//
//  HomeCell.swift
//  Quiz
//
//  Created by mac on 5/23/18.
//  Copyright © 2018 Devstorm. All rights reserved.
//

import UIKit

class HomeCell: UICollectionViewCell {
    
    @IBOutlet weak var featuredImage: UIImageView!
    @IBOutlet weak var subject: UILabel!
    @IBOutlet weak var questionsNumber: UILabel!
    @IBOutlet weak var time: UILabel!
    @IBOutlet weak var backgroundColorView: UIView!
    
    var menu: Menu? {
        didSet {
            self.updateUI()
        }
    }
    
    private func updateUI() {
        if let menu = menu {
            featuredImage.image = menu.featuredImage
            subject.text = menu.subject
            questionsNumber.text = menu.questionsNumber
            time.text = menu.time
            backgroundColorView.backgroundColor = menu.color
        } else {
            featuredImage.image = nil
            subject.text = nil
            questionsNumber.text = nil
            time.text = nil
            backgroundColorView.backgroundColor = nil
        }
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        self.layer.cornerRadius = 6
        layer.shadowRadius = 10
        layer.shadowOpacity = 0.4
        layer.shadowOffset = CGSize(width: 5, height: 10)
        self.clipsToBounds = false
        
    }
}
