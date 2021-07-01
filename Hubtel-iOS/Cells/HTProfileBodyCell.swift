//
//  HTProfileBodyCell.swift
//  Hubtel-iOS
//
//  Created by diayan siat on 01/07/2021.
//

import UIKit

class HTProfileBodyCell: UITableViewCell {
    
    static var reuseId = "HTProfileBodyCell"

    lazy var accountOptionLabel: UILabel = {
        let label = UILabel()
        return label
    }()

    let accountOptionImage = {
        return UIImageView()
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        layoutViews()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        layoutViews()
    }

    override func prepareForReuse() {
        super.prepareForReuse()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
        self.accessoryType = .disclosureIndicator
    }

    func configure(with option: Option) {
        accountOptionLabel.text = option.accountOption.rawValue
        accountOptionImage.image = option.accountOptionImage
    }

    func layoutViews() {
        addSubview(accountOptionLabel)
        addSubview(accountOptionImage)
        
        accountOptionLabel.translatesAutoresizingMaskIntoConstraints = false
        accountOptionImage.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            
            accountOptionImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            accountOptionImage.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 24),
            accountOptionImage.heightAnchor.constraint(equalToConstant: 20),
            accountOptionImage.widthAnchor.constraint(equalToConstant: 20),
            
            accountOptionLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 20),
            accountOptionLabel.leadingAnchor.constraint(equalTo: accountOptionImage.trailingAnchor, constant: 20),
            accountOptionLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: 24),
        ])
    }
}
