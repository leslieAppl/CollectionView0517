//
//  ViewController.swift
//  CollectionView0517
//
//  Created by leslie on 5/17/20.
//  Copyright © 2020 leslie. All rights reserved.
//

import UIKit

class C1VC: UIViewController {

    @IBOutlet weak var collectionItems: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionItems.dataSource = self
        collectionItems.backgroundColor = UIColor.white
    }
    
    

}

extension C1VC: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return AppData.items.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionItems.dequeueReusableCell(withReuseIdentifier: "myCell01", for: indexPath) as! MyCollectionViewCell01
        let file = AppData.items[indexPath.item]
        cell.bookCoverImg.image = UIImage(named: file)
        return cell
    }
    
    
}
