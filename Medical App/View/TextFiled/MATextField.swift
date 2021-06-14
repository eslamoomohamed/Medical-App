//
//  MATextField.swift
//  Medical App
//
//  Created by eslam on 6/1/21.
//

import UIKit

class MATextField: UITextField {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configureTF()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    
    
    private func configureTF(){
        
        translatesAutoresizingMaskIntoConstraints = false
        keyboardType                              = .numberPad
        returnKeyType                             = .done
        minimumFontSize                           = 10
        adjustsFontSizeToFitWidth                 = true
        textAlignment                             = .center
        textContentType                           = .oneTimeCode
        
        
        
    }

}
