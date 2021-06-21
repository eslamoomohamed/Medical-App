//
//  BGBackBtn.swift
//  Medical App
//
//  Created by eslam on 6/19/21.
//

import UIKit

class MAImageBtn: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    
    required init?(coder: NSCoder) { fatalError("init(coder:) has not been implemented") }
    
    
    init(buttonTybe: String) {
        super.init(frame: .zero)
        switch buttonTybe {
        case "profileIcon":
            setImage(UIImage(named: "profileIcon"), for: .normal)
        case "backIcon":
            setImage(UIImage(named: "backIcon"), for: .normal)
        case "menuIcon":
            setImage(UIImage(named: "menuIcon"), for: .normal)
        default:
            setImage(UIImage(named: "clearBtn"), for: .normal)
        }
        configure()
    }
    
    
    private func configure(){ translatesAutoresizingMaskIntoConstraints = false }
}
