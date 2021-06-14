//
//  MARightBottomRoundView.swift
//  Medical App
//
//  Created by eslam on 6/1/21.
//

import UIKit

class MARightBottomRoundView: UIView {


    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func configure(){
        
        translatesAutoresizingMaskIntoConstraints = false
        layer.maskedCorners = [.layerMaxXMaxYCorner]
        layer.cornerRadius = 30
        backgroundColor = .white
        
        
        
    }
    
    
}
