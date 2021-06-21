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
    
    
    required init?(coder: NSCoder) { fatalError("init(coder:) has not been implemented") }
    
    
    init(cornerRaduis:CGFloat, with Shadow: Bool, backgroundColor: UIColor ) {
        super.init(frame: .zero)
        layer.cornerRadius   = cornerRaduis
        self.backgroundColor = backgroundColor
        if Shadow {
            layer.shadowColor   = UIColor.lightGray.cgColor
            layer.shadowOffset  = CGSize(width: 0, height: 5.0)
            layer.shadowOpacity = 1
        }
        configure()
    }
    
    
    private func configure(){
        translatesAutoresizingMaskIntoConstraints = false
        layer.maskedCorners = [.layerMaxXMaxYCorner, .layerMaxXMinYCorner, .layerMinXMaxYCorner, .layerMinXMinYCorner]
    }
}
