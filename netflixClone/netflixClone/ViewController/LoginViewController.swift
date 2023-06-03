//
//  ViewController.swift
//  netflixClone
//
//  Created by Ana Pontes on 29/05/23.
//

import UIKit

class LoginViewController: UIViewController, LoginViewDelegate {
    
    var loginView: LoginView!
    
//    // MARK: - Properties
//    
//     let usernameTextField: UITextField = {
//        let textField = UITextField()
//        textField.placeholder = "Nome de usuário"
//        textField.borderStyle = .roundedRect
//        return textField
//    }()
//    
//     let passwordTextField: UITextField = {
//        let textField = UITextField()
//        textField.placeholder = "Senha"
//        textField.borderStyle = .roundedRect
//        textField.isSecureTextEntry = true
//        return textField
//    }()
//    
//     let loginButton: UIButton = {
//        let button = UIButton()
//        button.setTitle("Login", for: .normal)
//        button.backgroundColor = .red
//        button.addTarget(self, action: #selector(loginButtonTapped), for: .touchUpInside)
//        return button
//    }()
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .black
        loginView = LoginView()
        loginView.delegate = self
        
        view.addSubview(loginView)
        loginView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
                   loginView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                   loginView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
                   loginView.topAnchor.constraint(equalTo: view.topAnchor),
                   loginView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
               ])
    }
    
    // MARK: - Private Methods
    
 
    
    // MARK: - Actions
    
    @objc  func loginButtonTapped() {
        // Aqui você pode implementar a lógica de login
        // por exemplo, verificar as credenciais e navegar para a próxima tela se forem válidas
    }
    
    

    
    
    
}


