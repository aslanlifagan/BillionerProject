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
    }
    
    @objc
    fileprivate func submitButtonClicked() {
        print(#function)
    }
}

