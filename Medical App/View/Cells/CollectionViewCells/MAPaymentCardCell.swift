//
//  MAPaymentCardCell.swift
//  Medical App
//
//  Created by eslam on 6/5/21.
//

import UIKit

class MAPaymentCardCell: UICollectionViewCell {
    
    
    static let reuseID = "paymentCell"
    
    let containerView   = UIView()
    let backgroundImage = UIImageView()
    let selectedImage   = UIImageView()
    let visaLabel       = UILabel()
    let N1Label         = UILabel()
    let N2Label         = UILabel()
    let N3Label         = UILabel()
    let N4Label         = UILabel()
    let visaNameLabel   = UILabel()
    let visaDateLabel   = UILabel()
  
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.backgroundColor = #colorLiteral(red: 0.9254901961, green: 0.9450980392, blue: 0.9803921569, alpha: 1)
        
        configureContainerView()
        configureBackgroundImage()
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    
    
    
    func configureContainerView(){
        contentView.addSubview(containerView)
//        containerView.backgroundColor = .yellow

        
        containerView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
        
            containerView.topAnchor.constraint(equalTo: contentView.topAnchor),
            containerView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            containerView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            containerView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),

        
        ])

    }
    
    
    
    
    func configureBackgroundImage(){
        containerView.addSubview(backgroundImage)
        backgroundImage.image = UIImage(named: "Card")
        backgroundImage.contentMode = .scaleToFill
//        backgroundImage.backgroundColor = .blue
        
        backgroundImage.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
        
            backgroundImage.topAnchor.constraint(equalTo: containerView.topAnchor),
            backgroundImage.leadingAnchor.constraint(equalTo: containerView.leadingAnchor),
            backgroundImage.trailingAnchor.constraint(equalTo: containerView.trailingAnchor),
            backgroundImage.bottomAnchor.constraint(equalTo: containerView.bottomAnchor),

        ])
        
        
        
    }
    
    
    func configureVisaLabel(){
        
        containerView.addSubview(visaLabel)
        visaLabel.text = "Visa"
        visaLabel.textAlignment = .center
        visaLabel.textColor = .white
        
        
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
