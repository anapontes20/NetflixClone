//
//  LoginView.swift
//  netflixClone
//
//  Created by Ana Pontes on 29/05/23.
//

import UIKit

class LoginView: UIView  {
   
    // MARK: - Properties
    
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
        button.addTarget(self, action: #selector(loginButtonTapped), for: .touchUpInside)
        return button
    }()
    
    weak var delegate: LoginViewDelegate
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupsViews()
        setupsActions()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
        setupsViews()
        setupsActions()
        
    }
     
//    func setupViews() {
//       view.addSubview(usernameTextField)
//       view.addSubview(passwordTextField)
//       view.addSubview(loginButton)
//
//       usernameTextField.translatesAutoresizingMaskIntoConstraints = false
//       passwordTextField.translatesAutoresizingMaskIntoConstraints = false
//       loginButton.translatesAutoresizingMaskIntoConstraints = false
//
//       NSLayoutConstraint.activate([
//           usernameTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
//           usernameTextField.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -50),
//           usernameTextField.widthAnchor.constraint(equalToConstant: 200),
//
//           passwordTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
//           passwordTextField.topAnchor.constraint(equalTo: usernameTextField.bottomAnchor, constant: 20),
//           passwordTextField.widthAnchor.constraint(equalToConstant: 200),
//
//           loginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
//           loginButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 20),
//           loginButton.widthAnchor.constraint(equalToConstant: 100)
//       ])
//   }

    private func setupActions() {
         loginButton.addTarget(self, action: #selector(loginButtonTapped), for: .touchUpInside)
     }
     
     // MARK: - Actions
     
     @objc private func loginButtonTapped() {
         let model = LoginModel(username: usernameTextField.text ?? "", password: passwordTextField.text ?? "")
         delegate?.loginButtonTapped(with: model)
     }

    
    protocol LoginViewDelegate: AnyObject {
        func loginButtonTapped(with model: LoginModel)
    }
    
}
