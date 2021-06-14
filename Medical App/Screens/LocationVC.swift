//
//  LocationVC.swift
//  Medical App
//
//  Created by eslam on 5/30/21.
//

import UIKit

class LocationVC: UIViewController {

    
    
    let imageView      = UIImageView()
    let label0         = UILabel()
    let label1         = UILabel()
    let customView     = UIView()
    let locationImg    = UIImageView()
    let locationBtn    = UIButton()
    let continueBtn    = UIButton()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = #colorLiteral(red: 0.9254901961, green: 0.9450980392, blue: 0.9803921569, alpha: 1)

        configureLogo()
        configureLAbel0()
        configureLAbel1()
        configureCustomView()
        configureLocationImage()
        configureLocationBtn()
        configureContibueBtn()
        
    }
    

    
    

    
    
    func configureLogo(){
        
        view.addSubview(imageView)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "Logo")
        imageView.contentMode = .center
        
        
        NSLayoutConstraint.activate([
        
            imageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 40),
            imageView.widthAnchor.constraint(equalToConstant: 150),
            imageView.heightAnchor.constraint(equalToConstant: 100),
            imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        
        ])
        
        
    }
    
    
    
    func configureLAbel0(){
        
        view.addSubview(label0)
        label0.translatesAutoresizingMaskIntoConstraints = false
        label0.text = "Location"
        label0.textAlignment = .center
        label0.textColor = #colorLiteral(red: 0.09411764706, green: 0.07843137255, blue: 0.3803921569, alpha: 1)
        label0.font = UIFont.systemFont(ofSize: 25, weight: .semibold)
        
        NSLayoutConstraint.activate([
        
            label0.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 50),
            label0.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label0.heightAnchor.constraint(equalToConstant: 30),

        ])
        
    }

    
    
    
    func configureLAbel1(){
        
        view.addSubview(label1)
        label1.translatesAutoresizingMaskIntoConstraints = false
        label1.text = "Please enter your location"
        label1.textAlignment = .center
        label1.textColor = .black
        label1.font = UIFont.systemFont(ofSize: 18, weight: .light)
        
        NSLayoutConstraint.activate([
        
            label1.topAnchor.constraint(equalTo: label0.bottomAnchor, constant: 10),
            label1.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label1.heightAnchor.constraint(equalToConstant: 30),

        ])
        
    }
    
    
    
    
    func configureCustomView(){
        
        view.addSubview(customView)
        
        customView.translatesAutoresizingMaskIntoConstraints = false
        customView.layer.maskedCorners = [.layerMaxXMaxYCorner, .layerMaxXMinYCorner, .layerMinXMaxYCorner, .layerMinXMinYCorner]
        customView.layer.cornerRadius  = 10
        customView.backgroundColor     = .white
        
        NSLayoutConstraint.activate([
        
            customView.topAnchor.constraint(equalTo: view.centerYAnchor, constant: 20),
            customView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            customView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            customView.heightAnchor.constraint(equalToConstant: 50),
        ])

        
        
    }
    
    
    
    func configureLocationImage(){
        
        customView.addSubview(locationImg)
        locationImg.image = UIImage(named: "locationIcon")
        locationImg.contentMode = .center
        locationImg.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
        
            locationImg.topAnchor.constraint(equalTo: customView.topAnchor),
            locationImg.widthAnchor.constraint(equalToConstant: 40),
            locationImg.leadingAnchor.constraint(equalTo: customView.leadingAnchor, constant: 5),
            locationImg.bottomAnchor.constraint(equalTo: customView.bottomAnchor),

        
        
        ])
        
        
    }
    
    
    func configureLocationBtn(){
        
        customView.addSubview(locationBtn)
        locationBtn.setTitle("Your Location", for: .normal)
        locationBtn.setTitleColor(.lightGray, for: .normal)
        locationBtn.contentHorizontalAlignment = .left
        locationBtn.translatesAutoresizingMaskIntoConstraints = false
        
        locationBtn.addTarget(self, action: #selector(prsentMapVC), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
        
            locationBtn.topAnchor.constraint(equalTo: customView.topAnchor),
            locationBtn.leadingAnchor.constraint(equalTo: locationImg.trailingAnchor, constant: 5),
            locationBtn.trailingAnchor.constraint(equalTo: customView.trailingAnchor),
            locationBtn.bottomAnchor.constraint(equalTo: customView.bottomAnchor)

        
        
        ])
        
        
    }
    
    
    
    
    @objc func prsentMapVC(){
        
        let mapVC = MAMapVC()
        mapVC.modalPresentationStyle = .automatic
        present(UINavigationController(rootViewController: mapVC), animated: true)
        
        
    }
    
    


    
    
    
    func configureContibueBtn(){
        
        view.addSubview(continueBtn)
        continueBtn.setTitle("Continue", for: .normal)
        continueBtn.backgroundColor = #colorLiteral(red: 0.1647058824, green: 0.1647058824, blue: 0.7529411765, alpha: 1)
        continueBtn.layer.cornerRadius = 15
        continueBtn.translatesAutoresizingMaskIntoConstraints = false
        
        
        
        NSLayoutConstraint.activate([
        
//            mobileBtn.topAnchor.constraint(equalTo: label1.bottomAnchor, constant: 20),
            continueBtn.topAnchor.constraint(equalTo: customView.bottomAnchor, constant: 20),
            continueBtn.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            continueBtn.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            continueBtn.heightAnchor.constraint(equalToConstant: 50),

        
        ])
        
        
    }

    
    
    
    
    
}
