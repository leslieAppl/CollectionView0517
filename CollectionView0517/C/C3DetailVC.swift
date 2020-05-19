//
//  C3DetailVC.swift
//  CollectionView0517
//
//  Created by leslie on 5/19/20.
//  Copyright © 2020 leslie. All rights reserved.
//

import UIKit

class C3DetailVC: UIViewController {

    @IBOutlet weak var bookCover: UIImageView!
    @IBOutlet weak var bookTitle: UILabel!
    @IBOutlet weak var bookAuthor: UILabel!
    @IBOutlet weak var titleView: UIView!
    
    var selected: Int!

    override func viewDidLoad() {
        super.viewDidLoad()

        titleView.backgroundColor = UIColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 0.1)
        
        let file = AppData.items2[selected]
        bookCover.image = UIImage(named: file)
        
        if let data = AppData.itemsData[file] {
            bookTitle.text = data[0]
            bookAuthor.text = data[1]
        }


    }
    

    
}
