//
//  MyCollectionViewCell03.swift
//  CollectionView0517
//
//  Created by leslie on 5/19/20.
//  Copyright © 2020 leslie. All rights reserved.
//

import UIKit

class MyCollectionViewCell03: UICollectionViewCell {
    
    @IBOutlet weak var bookCover: UIImageView!
    @IBOutlet weak var bookTitle: UILabel!
    @IBOutlet weak var bookAuthor: UILabel!
    @IBOutlet weak var titleView: UIView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        backgroundColor = UIColor(red: 0.7, green: 0.7, blue: 0.7, alpha: 0.3)
        titleView.backgroundColor = UIColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 0.1)
    }
}
