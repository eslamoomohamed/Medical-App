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
    
    
    
    init(placeHolder: String, textAlignment: NSTextAlignment, keyboardType:UIKeyboardType, isSecureTextEntry: Bool ) {
        super.init(frame: .zero)
        
        self.placeholder   = placeHolder
        self.textAlignment = textAlignment
        self.keyboardType  = keyboardType
        self.isSecureTextEntry = isSecureTextEntry
        configureTF()
    }
    
    
    
    private func configureTF(){
        
        translatesAutoresizingMaskIntoConstraints = false
        returnKeyType                             = .done
        minimumFontSize                           = 10
        adjustsFontSizeToFitWidth                 = true
        autocorrectionType                        = .no
        
        
        
    }

}
