//
//  C1DetailVC.swift
//  CollectionView0517
//
//  Created by leslie on 5/17/20.
//  Copyright © 2020 leslie. All rights reserved.
//

import UIKit

class C1DetailVC: UIViewController {

    @IBOutlet weak var bookCover: UIImageView!
    @IBOutlet weak var bookTitle: UILabel!
    @IBOutlet weak var bookAuthor: UILabel!
    var selected: Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let file = AppData.items[selected]
        bookCover.image = UIImage(named: file)
        
        if let data = AppData.itemsData[file] {
            bookTitle.text = data[0]
            bookAuthor.text = data[1]
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
