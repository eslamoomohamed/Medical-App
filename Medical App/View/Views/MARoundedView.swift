//
//  MARoundedView.swift
//  Medical App
//
//  Created by eslam on 5/30/21.
//

import UIKit

class MARoundedView: UIView {

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
        backgroundColor     = .systemGray5
        layer.shadowColor   = UIColor.lightGray.cgColor
        layer.shadowOffset  = CGSize(width: 0, height: 5.0)
        layer.shadowOpacity = 1
        
        
    }

}
