//
//  RegisterViewController.swift
//  EarthquakeGuide
//
//  Created by Ataberk Canıtez on 3.11.2020.
//  Copyright © 2020 Ataberk Canıtez. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
   
    //MARK:- Consts.
    let cellId: String = "cellId"
    let logoCellId: String = "logoCellId"
    let titleCellId: String = "titleCellId"
    
    
    let cells:[String] = ["Logo", "Kayıt Ol","Adınız","Soy Adınız","Yaşınınz","Telefon Numaranız","Mail Adresiniz","Şifreniz","İl - ilçe","Açık Adresiniz","Kan Grubbunuz","Referans Kişi Bilgileri", "Yeni kişi ekle"]
    
    

    
    //MARK:- LifeCycles
       override func viewWillAppear(_ animated: Bool) {
           view.backgroundColor = UIColor(named: "backgroundColor")
           self.navigationController?.navigationBar.isHidden = true
       }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewsForRegisterScreen()

    }
    
    
    //MARK:- View Components.. Will be refactored.
    let collectionView : UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.showsVerticalScrollIndicator = true
        collectionView.backgroundColor = .clear
        
        
        return collectionView
    }()
    
    
    
   


}
