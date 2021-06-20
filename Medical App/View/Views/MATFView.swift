//
//  MATFView.swift
//  Medical App
//
//  Created by eslam on 6/20/21.
//

import UIKit

class MATFView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .white
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
 
    
    private func configure(){
        
        translatesAutoresizingMaskIntoConstraints = false
        layer.maskedCorners = [.layerMaxXMaxYCorner, .layerMaxXMinYCorner, .layerMinXMaxYCorner, .layerMinXMinYCorner]
        layer.cornerRadius  = 15
        backgroundColor     = .white
        
        
    }

    

}
