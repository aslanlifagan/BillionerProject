//
//  GetStartedController.swift
//  BillionerProject
//
//  Created by Aslanli Faqan on 05.10.24.
//

import UIKit
final class GetStartedController: UIViewController {
    @IBOutlet private weak var submitButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        configureButton()
    }
    
    fileprivate func configureButton() {
        submitButton.addTarget(self, action: #selector(submitButtonClicked), for: .touchUpInside)
        submitButton.setTitle("Get Started", for: .normal)
    }
    
    fileprivate func configureUI() {
        
    }
    @objc
    fileprivate func submitButtonClicked() {
        showRegisterController()
    }
    
    fileprivate func showRegisterController() {
        let vc = UIStoryboard
            .init(
                name: "Auth",
                bundle: nil
            ).instantiateViewController(withIdentifier: "RegisterController") as? RegisterController ?? RegisterController()
        navigationController?.pushViewController(vc, animated: true)
    }
}

