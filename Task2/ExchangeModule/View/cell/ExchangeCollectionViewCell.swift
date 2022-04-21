//
//  ExchangeCollectionViewCell.swift
//  Task2
//
//  Created by Rufan Abdurahmanov on 20.04.22.
//

import UIKit

class ExchangeCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak private var nameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func layoutSubviews() {
        layer.cornerRadius = 10
        
        let userInterfaceStyle = traitCollection.userInterfaceStyle
        if userInterfaceStyle == .dark {
            backgroundColor = UIColor(red: 32/255, green: 33/255, blue: 36/255, alpha: 1)
            nameLabel.textColor = .white
        } else {
            backgroundColor = .white
            nameLabel.textColor = .black
        }
    }
        
    func configure(exchange: String) {
        nameLabel.text = "   \(exchange)"
    }
}
