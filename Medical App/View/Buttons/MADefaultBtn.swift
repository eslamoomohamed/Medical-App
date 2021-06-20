//
//  MADefaultBtn.swift
//  Medical App
//
//  Created by eslam on 6/20/21.
//

import UIKit

class MADefaultBtn: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    init(btnTitle: String, titleColor: UIColor, backgroundColor: UIColor, raduis: CGFloat ) {
        super.init(frame: .zero)
        configure()
        setTitle(btnTitle, for: .normal)
        setTitleColor(titleColor, for: .normal)
        self.backgroundColor = backgroundColor
        self.layer.cornerRadius = raduis
    }
    
    
    
    private func configure(){
    
        translatesAutoresizingMaskIntoConstraints = false
 
    }


}
