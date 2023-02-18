//
//  UIView+Ext.swift
//  DiscoverMovie
//
//  Created by Zacky Ilahi Azmi on 18/02/23.
//

import UIKit

extension UIView {
    func pin(to superView: UIView){
        translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
        topAnchor.constraint(equalTo: superView.topAnchor),
        leadingAnchor.constraint(equalTo: superView.leadingAnchor),
        trailingAnchor.constraint(equalTo: superView.trailingAnchor),
        bottomAnchor.constraint(equalTo: superView.bottomAnchor),
        ])
        
    }
}
