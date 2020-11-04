//
//  RegisterLogoCell.swift
//  EarthquakeGuide
//
//  Created by Ataberk Canıtez on 4.11.2020.
//  Copyright © 2020 Ataberk Canıtez. All rights reserved.
//

import UIKit

class RegisterLogoCell: UICollectionViewCell {
    
    //MARK:- LifeCycles
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("fatal error")
    }
    
    
    //MARK:- Constraints.
    private func setupViews(){
        setupLogo()
    }
    
    private func setupLogo(){
        addSubview(logoImageView)
        NSLayoutConstraint.activate([
            logoImageView.topAnchor.constraint(equalTo: topAnchor),
            logoImageView.bottomAnchor.constraint(equalTo: bottomAnchor),
            logoImageView.widthAnchor.constraint(equalTo: heightAnchor),
            logoImageView.centerXAnchor.constraint(equalTo: centerXAnchor)
        ])
    }
    
    
    
    //MARK:- View Components
    let logoImageView: UIImageView = {
        let image = UIImage(named: "logo")
        let imageView = UIImageView(image: image)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.clipsToBounds = true
                
        
        return imageView
    }()
}
