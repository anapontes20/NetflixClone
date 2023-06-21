//
//  MovieCell.swift
//  netflixClone
//
//  Created by Ana Pontes on 20/06/23.
//

import UIKit

class MovieCell: UITableViewCell {

    var containerCell: UIView = {
        let view = UIView()
        view.backgroundColor = .darkGray
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.masksToBounds = true
        view.layer.cornerRadius = 20

        return view
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupCell()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
   
    
    func setupCell() {
        
        addSubview(containerCell)

        NSLayoutConstraint.activate([
            containerCell.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            containerCell.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            containerCell.topAnchor.constraint(equalTo: topAnchor),
            containerCell.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -16)
        ])
        backgroundColor = .clear
        contentView.backgroundColor = .clear
        
        
        
        
        
    }

}
