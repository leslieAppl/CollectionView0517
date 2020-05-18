//
//  C2VC.swift
//  CollectionView0517
//
//  Created by leslie on 5/18/20.
//  Copyright © 2020 leslie. All rights reserved.
//

import UIKit

class C2VC: UIViewController {

    @IBOutlet weak var collectionItems2: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionItems2.dataSource = self
        collectionItems2.backgroundColor = UIColor.white

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if let paths = collectionItems2.indexPathsForSelectedItems {
            for path in paths {
                collectionItems2.deselectItem(at: path, animated: true)
            }
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetails2" {
            let controller = segue.destination as! C2DetailVC
            
            if let paths = collectionItems2.indexPathsForSelectedItems {
                let selectedCell = paths[0].item
                print(paths[0])
                controller.selected = selectedCell
            }
        }

    }
    
}

extension C2VC: UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return AppData.items2.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionItems2.dequeueReusableCell(withReuseIdentifier: "myCell02", for: indexPath) as! MyCollectionViewCell02
        let file = AppData.items2[indexPath.item]
        cell.bookCoverImg.image = UIImage(named: file)
        return cell
    }
    
    
    
}
