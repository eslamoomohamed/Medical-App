//
//  MAOnBoardingView.swift
//  Medical App
//
//  Created by eslam on 5/29/21.
//

import UIKit

class MAOnBoardingView: UIView {

    let title      = UILabel()
    let imageView0 = UIImageView()
    let imageView1 = UIImageView()

    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    
    func setView(image0Name: String, image1Name: String, title: String){
        
        self.title.text = title 
        self.imageView0.image = UIImage(named: image0Name)
        self.imageView1.image = UIImage(named: image1Name)

        
        
    }
    
    
    private func configure(){
        
        self.addSubview(imageView0)
        self.addSubview(imageView1)
        self.addSubview(title)


        self.translatesAutoresizingMaskIntoConstraints = false
        title.translatesAutoresizingMaskIntoConstraints = false
        imageView0.translatesAutoresizingMaskIntoConstraints = false
        imageView1.translatesAutoresizingMaskIntoConstraints = false
        
        imageView1.contentMode = .center
        title.textColor = #colorLiteral(red: 0.09411764706, green: 0.07843137255, blue: 0.3803921569, alpha: 1)
        self.title.text =  "faild"
        title.textAlignment = .center
        title.numberOfLines = 2
        title.font = UIFont.systemFont(ofSize: 25, weight: .light)


        
        NSLayoutConstraint.activate([
        
            imageView0.topAnchor.constraint(equalTo: self.topAnchor),
            imageView0.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            imageView0.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            imageView0.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            
            imageView1.centerXAnchor.constraint(equalTo: centerXAnchor),
            imageView1.centerYAnchor.constraint(equalTo: centerYAnchor, constant: 50),
            imageView1.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            imageView1.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            
            
//            title.bottomAnchor.constraint(equalTo: imageView1.topAnchor, constant: -60),
            title.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 130),
            title.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 60),
            title.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -60),
            title.heightAnchor.constraint(equalToConstant: 65)
            


            


        
        ])
        
        
        
        
    }
    
    
}
