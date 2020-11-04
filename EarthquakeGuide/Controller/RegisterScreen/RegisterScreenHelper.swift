//
//  RegisterScreenHelper.swift
//  EarthquakeGuide
//
//  Created by Ataberk Canıtez on 3.11.2020.
//  Copyright © 2020 Ataberk Canıtez. All rights reserved.
//

import UIKit

extension RegisterViewController{
    
    
    
    
    
    
    func setupViewsForRegisterScreen(){
        setupCollectionView()

    }
    
    
    
    private func setupCollectionView(){
        setupCollectionViewConstraints()
        setupCollectionViewDelegates()
    }
    
    
    fileprivate func setupCollectionViewConstraints() {
        view.addSubview(collectionView)
        NSLayoutConstraint.activate([
            collectionView.topAnchor.constraint(equalTo: view.topAnchor, constant: 20),
            collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            collectionView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
    }
    
   
    
    
    //MARK:- Collection Views ...
    
    fileprivate func setupCollectionViewDelegates() {
        collectionView.delegate = self
        collectionView.dataSource = self
        
        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: cellId)
        collectionView.register(RegisterLogoCell.self, forCellWithReuseIdentifier: logoCellId)
        collectionView.register(RegisterTitleCell.self, forCellWithReuseIdentifier: titleCellId)
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 13
    }
          
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        switch indexPath.item {
        case 0:
            let logoCell = collectionView.dequeueReusableCell(withReuseIdentifier: logoCellId, for: indexPath) as! RegisterLogoCell
            
            
            return logoCell
            
        case 1:
            let titleCell = collectionView.dequeueReusableCell(withReuseIdentifier: titleCellId, for: indexPath) as! RegisterTitleCell
            return titleCell
        default:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath)
            
            cell.backgroundColor = .red
            let label = UILabel()
            label.translatesAutoresizingMaskIntoConstraints = false
            label.text = cells[indexPath.item]
            
            cell.addSubview(label)
            label.centerXAnchor.constraint(equalTo: cell.centerXAnchor).isActive = true
            label.centerYAnchor.constraint(equalTo: cell.centerYAnchor).isActive = true
            label.textAlignment = .center
            
            return cell
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        switch indexPath.item {
        case 0:
            return .init(width: view.frame.width, height: view.frame.height * 0.25)
        case 1:
            return .init(width: view.frame.width, height: 50)
        case 2:
            return .init(width: view.frame.width, height: 50)
        case 3:
            return .init(width: view.frame.width, height: 50)
            
        default:
            return .init(width: view.frame.width, height: 50)

        }
    }
    
    
}
