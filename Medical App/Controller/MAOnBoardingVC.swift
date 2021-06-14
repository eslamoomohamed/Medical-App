//
//  MAOnBoardingVC.swift
//  Medical App
//
//  Created by eslam on 5/29/21.
//

import UIKit

class MAOnBoardingVC: UIViewController {

    var titleLabel  = ""
    var image0      = ""
    var image1      = ""

    
    var onBoardingView = MAOnBoardingView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureOnBoardingView()

        
    }
    
    
    func setView(title: String, image0: String, image1: String){
        
        self.titleLabel = title
        self.image0     = image0
        self.image1     = image1
        
        onBoardingView.setView(image0Name: image0, image1Name: image1, title: title)
        
        
    }
    
    
    
    
    func configureOnBoardingView(){
        
        view.addSubview(onBoardingView)
        
        NSLayoutConstraint.activate([
        
            onBoardingView.topAnchor.constraint(equalTo: view.topAnchor),
            onBoardingView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            onBoardingView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            onBoardingView.bottomAnchor.constraint(equalTo: view.bottomAnchor)

        
        ])
        
        
    }



}
