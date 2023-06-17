//
//  ViewCode.swift
//  netflixClone
//
//  Created by Ana Pontes on 17/06/23.
//

import UIKit

protocol ViewCode {
    func buildHierarchy()
    func setupConstraints ()
    func apllyAdditionalChanges()
}

extension ViewCode {
    
    func viewSetups() {
        buildHierarchy()
        setupConstraints()
        apllyAdditionalChanges()
    }
}
