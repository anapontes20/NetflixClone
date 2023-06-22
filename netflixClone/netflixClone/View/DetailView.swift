//
//  DetailView.swift
//  netflixClone
//
//  Created by Ana Pontes on 21/06/23.
//

import UIKit

class DetailView: UIView {
    
    let movieView: UIImageView = {
        let movieView = UIImageView()
        return movieView
    }()
    
    let titleLabel: UILabel = {
        let titleLabel = UILabel
        titleLabel.text = "teste"
        titleLabel.textColor = .black
        titleLabel.font = UIFont.systemFont(ofSize: 16.0)
        return titleLabel
    }()
    
    let descriptionLabel: UILabel = {
        let descriptionLabel = UILabel
        return descriptionLabel
        
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
   
    func setupViews() {
        
        addSubview(movieView)
        addSubview(titleLabel)

        movieView.translatesAutoresizingMaskIntoConstraints = false

        
        NSLayoutConstraint.activate([
            movieView.leadingAnchor.constraint(equalTo: leadingAnchor),
            movieView.trailingAnchor.constraint(equalTo: trailingAnchor),
            movieView.topAnchor.constraint(equalTo: topAnchor),
            titleLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            titleLabel.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
    

            
        }
}
