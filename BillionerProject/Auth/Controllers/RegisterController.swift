//
//  RegisterController.swift
//  BillionerProject
//
//  Created by Aslanli Faqan on 05.10.24.
//

import UIKit

protocol RegisterControllerDelegate: AnyObject {
    func didFinish(user: User)
}
final class RegisterController: UIViewController {
    
    @IBOutlet private weak var signUpButton: UIButton!
    @IBOutlet private weak var loginButton: UIButton!
    @IBOutlet private weak var nameField: UITextField!
    @IBOutlet private weak var surnameField: UITextField!
    @IBOutlet private weak var passwordField: UITextField!
    @IBOutlet private weak var mailField: UITextField!
    private var user: User?
    weak var delegate: RegisterControllerDelegate?
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
        guard checkValidation() else {
            print(#function, "fieldler bosh ola bilmez")
            return
        }
        guard let name = nameField.text,
              let surname = surnameField.text,
              let password = passwordField.text,
              let mail = mailField.text else {return}
        
        user = User(name: name, surname: surname, email: mail, password: password)
        guard let user = user else {return}
        delegate?.didFinish(user: user)
        navigationController?.popViewController(animated: true)
        
    }
    fileprivate func checkValidation() -> Bool {
        guard let name = nameField.text,
              let surname = surnameField.text,
              let password = passwordField.text,
              let mail = mailField.text
        else {return false}
        return !(name.isEmpty || surname.isEmpty || password.isEmpty || mail.isEmpty)
    }
    
    
    @objc
    fileprivate func loginButtonClicked() {
        navigationController?.popViewController(animated: true)
    }
}

