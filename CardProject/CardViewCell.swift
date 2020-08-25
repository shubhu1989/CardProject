//
//  TableViewCell.swift
//  DemoTab
//
//  Created by CitySpidey on 6/25/20.
//  Copyright © 2020 Shubham Bhadauria. All rights reserved.
//

import UIKit

class CardViewCell: UITableViewCell {

    var cardView : UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setUpCardView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setUpCardView() {
        self.backgroundColor = .clear
        self.selectionStyle = .none
        
        let cardView = UIView()
        cardView.backgroundColor = .blue
        cardView.translatesAutoresizingMaskIntoConstraints = false
        cardView.layer.cornerRadius = 12.0
        self.cardView = cardView
        self.addSubview(cardView)
    
        NSLayoutConstraint.activate([
            cardView.leadingAnchor.constraint(equalTo:self.leadingAnchor, constant: 16.0),
            cardView.trailingAnchor.constraint(equalTo: self.trailingAnchor ,constant: -16.0),
            cardView.topAnchor.constraint(equalTo: self.topAnchor, constant: 16.0),
            cardView.bottomAnchor.constraint(equalTo: self.bottomAnchor)
        ])
    }
}
