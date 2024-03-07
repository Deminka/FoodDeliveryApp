//
//  LoginViewController.swift
//  FoodDeliveryApp
//
//  Created by mac on 25.02.2024.
//

import UIKit

class LoginViewController: UIViewController {
    
    private let bottomView = BottomView()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        setupLayout()
        

    }
    
    func facebookPressed() {
        print("facebook")
    }
    func googlePressed() {
        print("google")
    }
}


extension LoginViewController {
    
    private func setupLayout() {
        setupBottomView()
    }
    func setupBottomView() {
        view.addSubview(bottomView)
        bottomView.translatesAutoresizingMaskIntoConstraints = false
        
        bottomView.button2Action = facebookPressed
        bottomView.button1Action = googlePressed
        
        NSLayoutConstraint.activate([
            
            bottomView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor),
            bottomView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            bottomView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
            bottomView.heightAnchor.constraint(equalToConstant: 150)
        ])
    }
}


#Preview("LoginVC") {
    LoginViewController()
}
