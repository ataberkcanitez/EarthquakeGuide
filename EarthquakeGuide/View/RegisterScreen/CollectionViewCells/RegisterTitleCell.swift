//
//  RegisterTitleCell.swift
//  EarthquakeGuide
//
//  Created by Ataberk Canıtez on 4.11.2020.
//  Copyright © 2020 Ataberk Canıtez. All rights reserved.
//

import UIKit

class RegisterTitleCell: UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("fatal error")
    }
    
    
    private func setupViews(){
        setupLogo()
    }
    
    private func setupLogo(){
        addSubview(titleLabel)
        NSLayoutConstraint.activate([
            titleLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            titleLabel.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
    }
    
    
    
    
    //MARK:- View Components
    let titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Kayıt Ol"
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 20, weight: .semibold)
        label.numberOfLines = 0
        
        return label
    }()
    
    
    
}
