//
//  MAPageController.swift
//  Medical App
//
//  Created by eslam on 5/29/21.
//

import UIKit

class MAPageController: UIPageControl {
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    
    
    
    private func configure(){
        
        translatesAutoresizingMaskIntoConstraints = false
        currentPageIndicatorTintColor = #colorLiteral(red: 0.1647058824, green: 0.1647058824, blue: 0.7529411765, alpha: 1)
        pageIndicatorTintColor        = #colorLiteral(red: 0.8470588235, green: 0.8666666667, blue: 0.9607843137, alpha: 1)
        
        
    }

}
