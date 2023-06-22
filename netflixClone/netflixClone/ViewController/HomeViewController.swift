//
//  HomeViewController.swift
//  netflixClone
//
//  Created by Ana Pontes on 07/06/23.
//

import UIKit


class HomeViewController: UIViewController {
    
  let homeview = HomeView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view = homeview
        view.backgroundColor = .black
        homeview.filmList.dataSource = self
        homeview.filmList.delegate = self
    }
    
}

extension HomeViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let movieCell = tableView.dequeueReusableCell(withIdentifier: "teste", for: indexPath   )
        
        return movieCell
    }
}

extension HomeViewController: UITableViewDelegate {

    
}
