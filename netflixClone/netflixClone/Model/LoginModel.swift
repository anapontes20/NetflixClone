//
//  LoginModel.swift
//  netflixClone
//
//  Created by Ana Pontes on 31/05/23.
//

import UIKit

struct LoginModel {
    var login: String?
    var senha: String?
    
    init() {
        
    }
    
    init(login: String, senha: String) {
        self.login = login
        self.senha = senha
    }
    
}


