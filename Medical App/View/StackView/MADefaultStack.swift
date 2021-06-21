//
//  MADefaultStack.swift
//  Medical App
//
//  Created by eslam on 6/20/21.
//

import UIKit

class MADefaultStack: UIStackView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    
    required init(coder: NSCoder) { fatalError("init(coder:) has not been implemented") }
    
    
    private func configure(){
        axis         = .horizontal
        alignment    = .fill
        distribution = .fillEqually
        spacing      = 10
        translatesAutoresizingMaskIntoConstraints = false
    }

}
