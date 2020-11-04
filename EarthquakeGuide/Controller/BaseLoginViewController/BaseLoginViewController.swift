//
//  BaseLoginViewController.swift
//  EarthquakeGuide
//
//  Created by Ataberk Canıtez on 3.11.2020.
//  Copyright © 2020 Ataberk Canıtez. All rights reserved.
//

import UIKit

class BaseLoginViewController: UIViewController {

    
    
    //MARK:- LifeCycles
    
//    override func viewWillAppear(_ animated: Bool) {
//        view.backgroundColor = UIColor(named: "backgroundColor")
//        self.navigationController?.navigationBar.isHidden = true
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(named: "backgroundColor")
        self.navigationController?.navigationBar.isHidden = true
        setupViewsForBaseScreen()
    }
    
    
    
    //MARK:- View Components.. Will be refactored.
    
    let logoImageView: UIImageView = {
        let image = UIImage(named: "logo")
        let imageView = UIImageView(image: image)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.clipsToBounds = true
                
        
        return imageView
    }()
    
    let appNameTitle: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Earthquake Guide"
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 20, weight: .semibold)
        label.numberOfLines = 0
        
        return label
    }()
    
    
    

}
