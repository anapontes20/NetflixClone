//
//  HomeView.swift
//  netflixClone
//
//  Created by Ana Pontes on 07/06/23.
//

import UIKit


class HomeView: UIView {
        
    let filmList: UITableView = {
        let filmList = UITableView(frame: .zero, style: .plain)
        filmList.backgroundColor = .white
        filmList.isScrollEnabled = true
//        filmList.delegate = self()
//        filmList.dataSource = self()
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
            filmList.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            filmList.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            filmList.topAnchor.constraint(equalTo: self.topAnchor),
            filmList.bottomAnchor.constraint(equalTo: self.bottomAnchor)
        ])
      
            
            
        }
                
            
        
}
    
    
    
//extension HomeView:UITableViewDelegate, UITableViewDataSource {
////    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
////        return 2
////    }
////    
////    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
////        let cell = tableView.dequeueReusableCell(withIdentifier: "teste", for: <#T##IndexPath#>)
////    }
////    
//    
//    
//}
    
