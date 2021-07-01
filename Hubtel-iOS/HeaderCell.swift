//
//  HeaderCell.swift
//  Hubtel-iOS
//
//  Created by diayan siat on 01/07/2021.
//

import UIKit

class HeaderCell: UICollectionViewCell {
    
   // private let imageView: UIImageView!
    let avatarImage = HTImageView(frame: .zero)
    let username    = HTNameLabel(frame: .zero)
    let userIDCode  = UILabel()
    let userNumber  = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        
    }
    
    private func layoutViews() {
        addSubview(avatarImage)
        addSubview(username)
        addSubview(userIDCode)
        
        NSLayoutConstraint.activate([
            avatarImage.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 20),
            avatarImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 24),
            avatarImage.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -24),
            
            username.topAnchor.constraint(equalTo: username.bottomAnchor, constant: 20),
            username.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            username.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            
            username.topAnchor.constraint(equalTo: username.bottomAnchor, constant: 20),
            username.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 24),
            username.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -24),
            
            userIDCode.topAnchor.constraint(equalTo: username.bottomAnchor, constant: 20),
            userIDCode.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 24),
            userIDCode.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -24)
        ])
    }
    
}
