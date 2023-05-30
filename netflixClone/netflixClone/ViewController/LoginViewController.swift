//
//  ViewController.swift
//  netflixClone
//
//  Created by Ana Pontes on 29/05/23.
//

//import UIKit
//
//class LoginViewController: UIViewController {
//
//    let loginView = LoginView()
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        view = loginView
//
//        loginView.backgroundColor = .yellow
//        // Do any additional setup after loading the view.
//    }
//
//
//}

import UIKit

class LoginViewController: UIViewController {
    
    // MARK: - Properties
    
    private let usernameTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Login"
        textField.borderStyle = .roundedRect
        return textField
    }()
    
    private let passwordTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Senha"
        textField.borderStyle = .roundedRect
        textField.isSecureTextEntry = true
        return textField
    }()
    
    private let loginButton: UIButton = {
        let button = UIButton()
        button.setTitle("Login", for: .normal)
        button.backgroundColor = .red
        button.addTarget(self, action: #selector(loginButtonTapped), for: .touchUpInside)
        return button
    }()
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .black
        setupViews()
    }
    
    // MARK: - Private Methods
    
    private func setupViews() {
        view.addSubview(usernameTextField)
        view.addSubview(passwordTextField)
        view.addSubview(loginButton)
        
        usernameTextField.translatesAutoresizingMaskIntoConstraints = false
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            usernameTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            usernameTextField.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -50),
            usernameTextField.widthAnchor.constraint(equalToConstant: 200),
            
            passwordTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            passwordTextField.topAnchor.constraint(equalTo: usernameTextField.bottomAnchor, constant: 20),
            passwordTextField.widthAnchor.constraint(equalToConstant: 200),
            
            loginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            loginButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 20),
            loginButton.widthAnchor.constraint(equalToConstant: 100)
        ])
    }
    
    // MARK: - Actions
    
    @objc private func loginButtonTapped() {
        // Aqui você pode implementar a lógica de login
        // por exemplo, verificar as credenciais e navegar para a próxima tela se forem válidas
    }
}

