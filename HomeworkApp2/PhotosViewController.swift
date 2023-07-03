//
//  PhotosViewController.swift
//  HomeworkApp2
//
//  Created by testing on 30.06.2023.
//

import UIKit

final class PhotoViewController: UICollectionViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Photos"
        collectionView.register(PhotoCell.self, forCellWithReuseIdentifier: Constants.Identifier.photoCellIdentifier)
    }
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 6
    }
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Constants.Identifier.photoCellIdentifier, for: indexPath) as! PhotoCell
        return cell
    }
}
    
    extension PhotoViewController: UICollectionViewDelegateFlowLayout {
        
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize{
            let width = UIScreen.main.bounds.width
            let cellSize = width / 2 - 20
            return CGSize(width: cellSize, height: cellSize)
        }
    }
    
