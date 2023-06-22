//
//  DetailViewController.swift
//  netflixClone
//
//  Created by Ana Pontes on 21/06/23.
//

import UIKit

class DetailViewController: UIViewController {
    
    let detailView = DetailView()
      
      override func viewDidLoad() {
          super.viewDidLoad()
          view = detailView
          view.backgroundColor = .white
          
      }
}
