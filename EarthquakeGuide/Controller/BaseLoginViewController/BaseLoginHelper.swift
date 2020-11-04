//
//  BaseLoginHelper.swift
//  EarthquakeGuide
//
//  Created by Ataberk Canıtez on 3.11.2020.
//  Copyright © 2020 Ataberk Canıtez. All rights reserved.
//

import UIKit


extension BaseLoginViewController{

    func setupViewsForBaseScreen(){
        setupLogo()
        setupTitle()
    }


    private func setupLogo(){
        view.addSubview(logoImageView)
        let imageHeightAndWidth = view.frame.height * 0.3
        NSLayoutConstraint.activate([
            logoImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50),
            logoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            logoImageView.heightAnchor.constraint(equalToConstant: imageHeightAndWidth),
            logoImageView.widthAnchor.constraint(equalToConstant: imageHeightAndWidth)
        ])
        logoImageView.layer.cornerRadius = imageHeightAndWidth * 0.5
    }

    private func setupTitle(){
        view.addSubview(appNameTitle)
        NSLayoutConstraint.activate([
            appNameTitle.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 13),
            appNameTitle.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }

}

