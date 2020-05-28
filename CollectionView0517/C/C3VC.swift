//
//  C3VC.swift
//  CollectionView0517
//
//  Created by leslie on 5/19/20.
//  Copyright © 2020 leslie. All rights reserved.
//

import UIKit

class C3VC: UIViewController {

    @IBOutlet weak var collectionItems: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionItems.dataSource = self
        collectionItems.backgroundColor = UIColor.clear
        
        let layout = collectionItems.collectionViewLayout as! UICollectionViewFlowLayout
        layout.sectionInset = UIEdgeInsets(top: 0, left: 40, bottom: 0, right: 40)
        layout.minimumLineSpacing = 40
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetails3" {
            let controller = segue.destination as! C3DetailVC
            
            if let paths = collectionItems.indexPathsForSelectedItems {
                let selectedCell = paths[0].item
                print(paths[0])
                controller.selected = selectedCell
            }
        }

    }
    
}

extension C3VC: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return AppData.items2.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionItems.dequeueReusableCell(withReuseIdentifier: "myCell03", for: indexPath) as! MyCollectionViewCell03
        let file = AppData.items2[indexPath.item]
        cell.bookCover.image = UIImage(named: file)
        
        if let data = AppData.itemsData[file] {
            cell.bookTitle.text = data[0]
            cell.bookAuthor.text = data[1]
        }
        
        return cell
    }
    
    
}
