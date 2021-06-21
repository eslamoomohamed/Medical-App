//
//  MASeconderyLabel.swift
//  Medical App
//
//  Created by eslam on 6/19/21.
//

import UIKit

class MASeconderyLabel: UILabel {
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        configure()
    }
    
    
    required init?(coder: NSCoder) { fatalError("init(coder:) has not been implemented") }
    
    
    init(text: String, textAlignment: NSTextAlignment, fontSize: CGFloat, textColor: UIColor, weight: UIFont.Weight,numOflines: Int, fitWidth: Bool) {
        super.init(frame: .zero)
        self.text = text
        self.textColor = textColor
        self.textAlignment = textAlignment
        self.font = UIFont.systemFont(ofSize: fontSize, weight: weight)
        self.numberOfLines = numOflines
        self.adjustsFontSizeToFitWidth = fitWidth
        configure()
    }
    
    
    private func configure(){
        
        translatesAutoresizingMaskIntoConstraints = false
        adjustsFontSizeToFitWidth = true
        lineBreakMode             = .byTruncatingTail
    }
}
