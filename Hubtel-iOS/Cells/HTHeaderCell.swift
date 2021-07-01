//
//  HeaderCell.swift
//  Hubtel-iOS
//
//  Created by diayan siat on 01/07/2021.
//

import UIKit

class HTHeaderView: UIView {

    let avatarImage  = HTImageView(frame: .zero)
    let rewardsImage = UIImageView()
    let username     = HTNameLabel(frame: .zero)
    let userIDCode   = UILabel()
    let userNumber   = UILabel()
    let editProfileButton = UIButton()
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        layoutViews()
        configure()
    }

    private func configure() {
        editProfileButton.setTitle("Edit Profile", for: .normal)
        editProfileButton.setTitleColor(UIColor.systemGreen, for: .normal)
        
        rewardsImage.layer.cornerRadius = 8
        rewardsImage.clipsToBounds      = true
        rewardsImage.backgroundColor = .green
        
        avatarImage.layer.cornerRadius  = 25
        //avatarImage.layer.borderColor   = UIColor.systemGray
        avatarImage.clipsToBounds       = true
        
        username.text = "Diayan Siat"
        userNumber.text = "233242556336"
        avatarImage.image = UIImage(systemName: "person.circle")
    }

    private func layoutViews() {
        addSubview(avatarImage)
        addSubview(rewardsImage)
        addSubview(username)
        addSubview(userIDCode)
        addSubview(userNumber)
        addSubview(editProfileButton)
        
        rewardsImage.translatesAutoresizingMaskIntoConstraints = false
        username.translatesAutoresizingMaskIntoConstraints     = false
        userIDCode.translatesAutoresizingMaskIntoConstraints   = false
        userNumber.translatesAutoresizingMaskIntoConstraints   = false
        editProfileButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            avatarImage.topAnchor.constraint(equalTo: self.topAnchor, constant: 20),
            avatarImage.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            avatarImage.heightAnchor.constraint(equalToConstant: 50),
            avatarImage.widthAnchor.constraint(equalToConstant: 50),
            
            rewardsImage.topAnchor.constraint(equalTo: self.topAnchor, constant: 20),
            rewardsImage.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
//            rewardsImage.leadingAnchor.constraint(equalTo: avatarImage.trailingAnchor, constant: 16),
            rewardsImage.heightAnchor.constraint(equalToConstant: 90),
            rewardsImage.widthAnchor.constraint(equalToConstant: 50),
            
            username.topAnchor.constraint(equalTo: avatarImage.bottomAnchor, constant: 20),
            username.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            username.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            
            userNumber.topAnchor.constraint(equalTo: username.bottomAnchor, constant: 4),
            userNumber.leadingAnchor.constraint(equalTo: username.leadingAnchor, constant: 0),
            userNumber.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            
            userIDCode.topAnchor.constraint(equalTo: username.bottomAnchor, constant: 20),
            userIDCode.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            userIDCode.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            
            editProfileButton.topAnchor.constraint(equalTo: userIDCode.bottomAnchor, constant: 8),
            editProfileButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
        ])
    }

}
