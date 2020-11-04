//
//  LoginViewController.swift
//  EarthquakeGuide
//
//  Created by Ataberk Canıtez on 3.11.2020.
//  Copyright © 2020 Ataberk Canıtez. All rights reserved.
//

import UIKit

class LoginViewController: BaseLoginViewController {
    
    
    
    
    
    //MARK:- LifeCycles
    override func viewWillAppear(_ animated: Bool) {
//        view.backgroundColor = UIColor(named: "backgroundColor")
        self.navigationController?.navigationBar.isHidden = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewsForLoginScreen()
        

    }
    
    
    
    //MARK:- Button events
    @objc func handleRegister(){
        self.navigationController?.pushViewController(RegisterViewController(), animated: true)
    }
    
    @objc func handleLogin(){
        print("login ...")
    }

    
    
    
    
    
    //MARK:- View Components.. Will be refactored.
    
    let registerButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .white
        button.setTitle("Kayıt Ol", for: .normal)
        button.setTitleColor(#colorLiteral(red: 0.4392156863, green: 0.4392156863, blue: 0.4392156863, alpha: 1), for: .normal)
        button.layer.cornerRadius = 8
        button.clipsToBounds = true
        
        
        button.layer.borderColor = #colorLiteral(red: 0.4392156863, green: 0.4392156863, blue: 0.4392156863, alpha: 0.3373822774)
        button.layer.borderWidth = 1
        
        
        button.addTarget(self, action: #selector(handleRegister), for: .touchUpInside)
        
        return button
    }()
    
    
    
    let loginButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .white
        button.setTitle("Giriş Yap", for: .normal)
        button.setTitleColor(#colorLiteral(red: 0.4392156863, green: 0.4392156863, blue: 0.4392156863, alpha: 1), for: .normal)
        button.layer.cornerRadius = 8
        button.clipsToBounds = true
        button.layer.borderColor = #colorLiteral(red: 0.4392156863, green: 0.4392156863, blue: 0.4392156863, alpha: 0.3373822774)
        button.layer.borderWidth = 1
        
        button.addTarget(self, action: #selector(handleLogin), for: .touchUpInside)
        
        return button
    }()
    
    let guideButton : UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Ne İşe Yarar?", for: .normal)
        button.setTitleColor(UIColor(named: "textColor"), for: .normal)

        
        return button
    }()
    

}
