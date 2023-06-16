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
        filmList.backgroundColor = .white
        return filmList
        }()
    
    
    let teste: UIButton = {
       let button = UIButton()
       button.setTitle("teste", for: .normal)
       button.backgroundColor = .black
        
       return button
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
        addSubview(teste)
        
        teste.translatesAutoresizingMaskIntoConstraints = false
        filmList.translatesAutoresizingMaskIntoConstraints = false

        
        NSLayoutConstraint.activate([
            teste.centerXAnchor.constraint(equalTo: centerXAnchor),
            teste.centerYAnchor.constraint(equalTo: centerYAnchor),
            teste.widthAnchor.constraint(equalToConstant: 100),
            
            filmList.translatesAutoresizingMaskIntoConstraints = false
            filmList.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
            filmList.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
            filmList.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
            filmList.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        ])
      
               
                
            
        
}
    }
    
    
    
    
