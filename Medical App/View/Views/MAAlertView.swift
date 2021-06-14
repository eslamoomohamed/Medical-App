//
//  MAAlertView.swift
//  Medical App
//
//  Created by eslam on 6/7/21.
//

import UIKit

class MAAlertView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configureView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func configureView(){
        
        backgroundColor       = UIColor.white
        layer.cornerRadius    = 10
        clipsToBounds         = true
        layer.maskedCorners   = [.layerMaxXMaxYCorner, .layerMaxXMinYCorner, .layerMinXMaxYCorner, .layerMinXMinYCorner]
        layer.borderWidth     = 1
        layer.borderColor     = #colorLiteral(red: 0.5529411765, green: 0.8745098039, blue: 0.7607843137, alpha: 1)
        translatesAutoresizingMaskIntoConstraints = false
        
        
        
    }

}
