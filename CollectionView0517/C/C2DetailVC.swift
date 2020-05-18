//
//  C2DetailVC.swift
//  CollectionView0517
//
//  Created by leslie on 5/18/20.
//  Copyright © 2020 leslie. All rights reserved.
//

import UIKit

class C2DetailVC: UIViewController {

    @IBOutlet weak var bookCover: UIImageView!
    @IBOutlet weak var bookTitle: UILabel!
    @IBOutlet weak var bookAuthor: UILabel!
    var selected: Int!

    override func viewDidLoad() {
        super.viewDidLoad()

        let file = AppData.items2[selected]
        bookCover.image = UIImage(named: file)
        
        if let data = AppData.itemsData[file] {
            bookTitle.text = data[0]
            bookAuthor.text = data[1]
        }
    }
    
    
}
