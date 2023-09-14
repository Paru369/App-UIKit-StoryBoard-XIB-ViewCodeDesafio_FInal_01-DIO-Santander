//
//  CollectionViewTableViewCell.swift
//  iFlix
//
//  Created by Paulo Pinheiro on 9/13/23.
//

import UIKit

class CollectionViewTableViewCell: UITableViewCell {

    static let identifier = "CollectionViewTableViewCell"
    
    private let collectionView: UICollectionView = {
            let layout = UICollectionViewFlowLayout()
            layout.itemSize = CGSize(width: 140, height: 200)
            layout.scrollDirection = .horizontal
            let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
           collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "cell") // UICollectionViewCell.identifier)
            return collectionView
        }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
           super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.backgroundColor = .systemCyan
          contentView.addSubview(collectionView)
           
           collectionView.delegate = self
           collectionView.dataSource = self
       }
    
    required init?(coder: NSCoder) {
            fatalError()
        }
    override func layoutSubviews() {
        super.layoutSubviews()
        collectionView.frame = contentView.bounds
    }
}


extension CollectionViewTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) //as? TitleCollectionViewCell else {
        cell.backgroundColor = .systemPink
        return cell //UICollectionViewCell()
        }
        
    //    guard let model = titles[indexPath.row].poster_path else {
    //        return UICollectionViewCell()
    //    }
    //    cell.configure(with: model)
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
           return 10
       }
    
    
    
}
