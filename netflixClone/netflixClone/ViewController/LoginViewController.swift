//
//  ViewController.swift
//  netflixClone
//
//  Created by Ana Pontes on 29/05/23.
//

import UIKit

class LoginViewController: UIViewController, LoginViewDelegate {
    
  
    let loginView = LoginView()
    
    var model = LoginModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view = loginView
    }
    
    func loginButtonTapped() {
        model.login = loginView.usernameTextField.text ?? ""
        model.senha = loginView.passwordTextField.text ?? ""
        //let model = LoginModel(login: loginView.usernameTextField.text ?? "", senha: loginView.passwordTextField.text ?? "")
    }
    
}


