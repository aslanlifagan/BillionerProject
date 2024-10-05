//
//  RegisterController.swift
//  BillionerProject
//
//  Created by Aslanli Faqan on 05.10.24.
//

import UIKit
final class RegisterController: UIViewController {
    
    @IBOutlet private weak var signUpButton: UIButton!
    @IBOutlet private weak var loginButton: UIButton!
    @IBOutlet private weak var nameField: UITextField!
    @IBOutlet private weak var surnameField: UITextField!
    @IBOutlet private weak var passwordField: UITextField!
    @IBOutlet private weak var mailField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    fileprivate func configureUI() {
        navigationController?.setNavigationBarHidden(true, animated: true)
        configureButton()
    }
    
    fileprivate func configureButton() {
        signUpButton.addTarget(self, action: #selector(signUpButtonClicked), for: .touchUpInside)
        signUpButton.setTitle("Sign Up", for: .normal)
        loginButton.addTarget(self, action: #selector(loginButtonClicked), for: .touchUpInside)
        loginButton.setTitle("Login", for: .normal)
    }
    
    @objc
    fileprivate func signUpButtonClicked() {
        print(#function)
    }
    @objc
    fileprivate func loginButtonClicked() {
        print(#function)
    }
}

