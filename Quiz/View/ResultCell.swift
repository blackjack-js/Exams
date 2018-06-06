//
//  ResultCell.swift
//  Quiz
//
//  Created by mac on 5/26/18.
//  Copyright © 2018 Devstorm. All rights reserved.
//

import UIKit

class ResultCell: UICollectionViewCell {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var answerLabel: UILabel!
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        self.layer.cornerRadius = 6
        layer.shadowRadius = 10
        layer.shadowOpacity = 0.2
        layer.shadowOffset = CGSize(width: 5, height: 10)
        self.clipsToBounds = false
        
    }
}
