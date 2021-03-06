//
//  NSCollectionLayoutSection+Layout.swift
//  Airbnb Home
//
//  Created by Frank Bara on 6/25/21.
//

import UIKit

extension NSCollectionLayoutSection {
    
    static func sideScrollingTwoItem() -> NSCollectionLayoutSection {
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1),
                                              heightDimension: .estimated(85))
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        item.contentInsets = .init(top: 8, leading: 0, bottom: 8, trailing: 0)
        
        let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.65),
                                               heightDimension: .estimated(180))
        
        let group = NSCollectionLayoutGroup.vertical(layoutSize: groupSize, subitem: item, count: 2)
        
        let section = NSCollectionLayoutSection(group: group)
        section.orthogonalScrollingBehavior = .groupPaging
        section.interGroupSpacing = 12
        section.contentInsets = .init(top: 20, leading: 20, bottom: 20, trailing: 20)
        
        return section
    }
}
