//
//  MALineView.swift
//  Medical App
//
//  Created by eslam on 6/1/21.
//

import UIKit

class MALineView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    
    required init?(coder: NSCoder) { fatalError("init(coder:) has not been implemented") }
    
    
    private func configure(){
        translatesAutoresizingMaskIntoConstraints = false
        self.frame.size.height = 1
        backgroundColor        = .lightGray
    }
}
