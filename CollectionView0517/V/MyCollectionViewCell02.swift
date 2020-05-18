//
//  MyCollectionViewCell02.swift
//  CollectionView0517
//
//  Created by leslie on 5/18/20.
//  Copyright © 2020 leslie. All rights reserved.
//

import UIKit

class MyCollectionViewCell02: UICollectionViewCell {
    
    @IBOutlet weak var bookCoverImg: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        selectedBackgroundView = UIView()
        selectedBackgroundView?.backgroundColor = UIColor(red: 0.9, green: 0.9, blue: 0.9, alpha: 1)
    }

}
