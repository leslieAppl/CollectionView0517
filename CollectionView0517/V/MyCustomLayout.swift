//
//  MyCustomLayout.swift
//  CollectionView0517
//
//  Created by leslie on 5/18/20.
//  Copyright © 2020 leslie. All rights reserved.
//

import UIKit

class MyCustomLayout: UICollectionViewLayout {
    
//MARK: - Creating a custom layout object
    let widthCell: CGFloat = 140
    let heightCell: CGFloat = 180
    let spaceCells: CGFloat = 10
    var listCells: [IndexPath: UICollectionViewLayoutAttributes] = [:]
    
//Step 1: preparing Layout Data
    override func prepare() {
        let collection = collectionView!
        let bounds = collection.bounds
        let columnLeft = bounds.midX - widthCell
        let columnRight = bounds.midX
        
        let totalCells = collection.numberOfItems(inSection: 0)
        var posY: CGFloat = spaceCells
        
        for index in 0 ..< totalCells {
            let path = IndexPath(item: index, section: 0)
            let attributes = UICollectionViewLayoutAttributes(forCellWith: path)
            
            if index % 2 == 0 {
                attributes.frame = CGRect(x: columnLeft, y: posY, width: widthCell, height: heightCell)
            }
            else {
                attributes.frame = CGRect(x: columnRight, y: posY, width: widthCell, height: heightCell)
                posY = posY + heightCell + spaceCells
            }
            
            listCells[path] = attributes
        }
    }
    
//Step 2: Collection View Content Size
    override var collectionViewContentSize: CGSize {
        let collection = collectionView!
        let totalCells = collection.numberOfItems(inSection: 0)
        let totalColumn = ceil(CGFloat(totalCells)/2)
        let width = collection.bounds.size.width
        let height = totalColumn * (heightCell + spaceCells)
        return CGSize(width: width, height: height)
    }

//Step 3: Layout Attributes For Item
    override func layoutAttributesForItem(at indexPath: IndexPath) -> UICollectionViewLayoutAttributes? {
        return listCells[indexPath]
    }
    
//Step 4: Layout Attributes for Elements on Screen
    override func layoutAttributesForElements(in rect: CGRect) -> [UICollectionViewLayoutAttributes]? {
        var listAttributes: [UICollectionViewLayoutAttributes] = []
        
        for attributes in listCells.values {
            let cellRect = attributes.frame
            if cellRect.intersects(rect) {
                listAttributes.append(attributes)
            }
        }
        return listAttributes
    }
    
//Step 5: Adapting the Layout to every Orientation
    override func shouldInvalidateLayout(forBoundsChange newBounds: CGRect) -> Bool {
        return true
    }
}
