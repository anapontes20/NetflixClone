//
//  HomeView.swift
//  netflixClone
//
//  Created by Ana Pontes on 07/06/23.
//

import UIKit


class HomeView: UIView {
        
    let filmList: UITableView = {
    let filmList = UITableView()
    filmList.backgroundColor = .clear
    filmList.register(MovieCell.self, forCellReuseIdentifier: "teste")
    filmList.rowHeight = 150
    filmList.estimatedRowHeight = 150
    return filmList
}()
    
   
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()

    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func setupViews() {
        
        addSubview(filmList)
        
        filmList.translatesAutoresizingMaskIntoConstraints = false

        
        NSLayoutConstraint.activate([
            filmList.leadingAnchor.constraint(equalTo: leadingAnchor),
            filmList.trailingAnchor.constraint(equalTo: trailingAnchor),
            filmList.topAnchor.constraint(equalTo: topAnchor),
            filmList.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])

            
        }
        
}
    

        
    

    
