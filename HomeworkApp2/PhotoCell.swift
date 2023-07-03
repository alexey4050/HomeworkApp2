//
//  PhotoCell.swift
//  HomeworkApp2
//
//  Created by testing on 01.07.2023.
//

import UIKit

final class PhotoCell: UICollectionViewCell {
    
    private let photoView = UIImageView(image: UIImage(systemName: "person"))
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews(){
        addSubview(photoView)
        setupConstraints()
    }
    
    private func setupConstraints() {
        photoView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            photoView.topAnchor.constraint(equalTo: topAnchor),
                                     photoView.leadingAnchor.constraint(equalTo: leadingAnchor),
                                     photoView.bottomAnchor.constraint(equalTo: bottomAnchor),
                                     photoView.trailingAnchor.constraint(equalTo: trailingAnchor)
        ])
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        photoView.image = nil
    }
}

