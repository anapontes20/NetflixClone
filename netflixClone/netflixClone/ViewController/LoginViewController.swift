//
//  ViewController.swift
//  netflixClone
//
//  Created by Ana Pontes on 29/05/23.
//

import UIKit

class LoginViewController: UIViewController{
    
  
    let loginView = LoginView()
    
    var model = LoginModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginView.loginButton.addTarget(self, action: #selector(loginButtonTapped), for: .touchUpInside)
        view = loginView
    }
    
    @objc func loginButtonTapped() {
        model.login = loginView.usernameTextField.text ?? ""
        model.senha = loginView.passwordTextField.text ?? ""
        let homeViewController = HomeViewController()
        navigationController?.show(homeViewController, sender: false)
     
        
    }
    
 
}


