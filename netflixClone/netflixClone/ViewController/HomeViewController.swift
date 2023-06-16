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
        view.backgroundColor = .red
    }
    
}
