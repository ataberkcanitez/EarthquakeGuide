//
//  LoginScreenHelpers.swift
//  EarthquakeGuide
//
//  Created by Ataberk Canıtez on 3.11.2020.
//  Copyright © 2020 Ataberk Canıtez. All rights reserved.
//

import UIKit

extension LoginViewController{
    
    
    
    
    
    func setupViewsForLoginScreen(){
        setupRegisterButton()
        setupLoginButton()
        setupGuideButton()
    }
    
    private func setupRegisterButton(){
        view.addSubview(registerButton)
        NSLayoutConstraint.activate([
            registerButton.topAnchor.constraint(equalTo: appNameTitle.bottomAnchor, constant: 40),
            registerButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 37),
            registerButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -37),
            registerButton.heightAnchor.constraint(equalToConstant: 40)
        
        ])
    }
    
    private func setupLoginButton(){
        view.addSubview(loginButton)
        NSLayoutConstraint.activate([
            loginButton.topAnchor.constraint(equalTo: registerButton.bottomAnchor, constant: 20),
            loginButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 37),
            loginButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -37),
            loginButton.heightAnchor.constraint(equalToConstant: 40)
        
        ])
        
    }
    private func setupGuideButton(){
        view.addSubview(guideButton)
        NSLayoutConstraint.activate([
            guideButton.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 13),
            guideButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 37),
            guideButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -37),
            guideButton.heightAnchor.constraint(equalToConstant: 20)
        
        ])
        
    }
    
    
    
    
    
}
