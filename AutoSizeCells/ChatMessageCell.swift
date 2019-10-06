//
//  ChatMessageCell.swift
//  AutoSizeCells
//
//  Created by Yavuz on 5.10.2019.
//  Copyright © 2019 Yavuz. All rights reserved.
//

import UIKit

class ChatMessageCell: UITableViewCell {

    let messageLabel = UILabel()
    let bubbleBackgroundView = UIView()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        bubbleBackgroundView.backgroundColor = .lightGray
        bubbleBackgroundView.layer.cornerRadius = 5
        bubbleBackgroundView.translatesAutoresizingMaskIntoConstraints = false
        addSubview(bubbleBackgroundView)
        
        addSubview(messageLabel)
        messageLabel.text = "112371283712983713817398173918371837913718937183719eyuawhdaukdhkadjahdajkdhwuqchbmxncbzmncxbzncmbuchiuwey81927e1982e9edhasjkmnzxckueywuqeqwieuqwioewjdnasmcnmz,xncaljdsakduqioweu019e1290djkan"
        messageLabel.numberOfLines = 0
        
        messageLabel.translatesAutoresizingMaskIntoConstraints = false
        
        let constraints = [messageLabel.topAnchor.constraint(equalTo: topAnchor, constant: 8),
        messageLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 8),
        messageLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -8),
        messageLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -8),
        
        bubbleBackgroundView.topAnchor.constraint(equalTo: messageLabel.topAnchor, constant: -4),
        bubbleBackgroundView.leadingAnchor.constraint(equalTo: messageLabel.leadingAnchor, constant: -4),
        bubbleBackgroundView.bottomAnchor.constraint(equalTo: messageLabel.bottomAnchor, constant: 4),
        bubbleBackgroundView.trailingAnchor.constraint(equalTo: messageLabel.trailingAnchor, constant: 4)
        
        ]
        
        NSLayoutConstraint.activate(constraints)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
