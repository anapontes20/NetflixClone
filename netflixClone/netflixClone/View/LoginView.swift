//
//  LoginView.swift
//  netflixClone
//
//  Created by Ana Pontes on 29/05/23.
//

import UIKit

class LoginView: UIView  {
       
     let usernameTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Nome de usuário"
        textField.borderStyle = .roundedRect
        return textField
    }()
    
     let passwordTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Senha"
        textField.borderStyle = .roundedRect
        textField.isSecureTextEntry = true
        return textField
    }()
    
     let loginButton: UIButton = {
        let button = UIButton()
        button.setTitle("Login", for: .normal)
        button.backgroundColor = .red
//        button.addTarget(LoginView.self, action: #selector(loginButtonTapped), for: .touchUpInside)
        return button
    }()
    
    weak var delegate: (LoginViewDelegate)?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
     
    func setupViews() {
       addSubview(usernameTextField)
       addSubview(passwordTextField)
       addSubview(loginButton)

       usernameTextField.translatesAutoresizingMaskIntoConstraints = false
       passwordTextField.translatesAutoresizingMaskIntoConstraints = false
       loginButton.translatesAutoresizingMaskIntoConstraints = false

       NSLayoutConstraint.activate([
           usernameTextField.centerXAnchor.constraint(equalTo: centerXAnchor),
           usernameTextField.centerYAnchor.constraint(equalTo: centerYAnchor, constant: -50),
           usernameTextField.widthAnchor.constraint(equalToConstant: 200),

           passwordTextField.centerXAnchor.constraint(equalTo: centerXAnchor),
           passwordTextField.topAnchor.constraint(equalTo: usernameTextField.bottomAnchor, constant: 20),
           passwordTextField.widthAnchor.constraint(equalToConstant: 200),

           loginButton.centerXAnchor.constraint(equalTo: centerXAnchor),
           loginButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 20),
           loginButton.widthAnchor.constraint(equalToConstant: 100)
       ])
   }
     
//     @objc private func loginButtonTapped() {
//         delegate?.loginButtonTapped()
//         
//     }
}

protocol LoginViewDelegate: AnyObject {
    func loginButtonTapped()
}
