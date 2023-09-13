//
//  CollectionViewTableViewCell.swift
//  iFlix
//
//  Created by Paulo Pinheiro on 9/13/23.
//

import UIKit

class CollectionViewTableViewCell: UITableViewCell {

    static let identifier = "CollectionViewTableViewCell"

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
           super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.backgroundColor = .systemCyan
        //  contentView.addSubview(collectionView)
           
          // collectionView.delegate = self
          // collectionView.dataSource = self
       }
    
    required init?(coder: NSCoder) {
            fatalError()
        }
    
}
