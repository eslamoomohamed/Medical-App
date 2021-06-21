//
//  MAPrrofileVC.swift
//  Medical App
//
//  Created by eslam on 6/4/21.
//

import UIKit

class MAPrrofileVC: UIViewController {

    
    let headerView       = MADefaultView(backgroundColor: #colorLiteral(red: 0.1963549266, green: 0.1783242283, blue: 0.8873584812, alpha: 1))
    let backBtn          = MAImageBtn(buttonTybe: "backIcon")
    let userImage        = MADefaultImageView(with: "Logo")
    let seconedView      = MADefaultView(backgroundColor: #colorLiteral(red: 0.9254901961, green: 0.9450980392, blue: 0.9803921569, alpha: 1))
    let stackView        = UIStackView()
    let name             = MASeconderyLabel(text: "Eslam mohamed abd elsadek", textAlignment: .left, fontSize: 25, textColor: #colorLiteral(red: 0.1647058824, green: 0.1647058824, blue: 0.7529411765, alpha: 1), weight: .semibold,numOflines: 0,fitWidth: false)
    let location         = MASeconderyLabel(text: "Luxembourg", textAlignment: .left, fontSize: 22, textColor: #colorLiteral(red: 0.09411764706, green: 0.07843137255, blue: 0.3803921569, alpha: 1), weight: .semibold,numOflines: 0,fitWidth: false)
    let ageTitleLabel    = MASeconderyLabel(text: "Age: ", textAlignment: .left, fontSize: 18, textColor: .darkGray, weight: .semibold,numOflines: 0,fitWidth: false)
    let ageLabel         = MASeconderyLabel(text: "50", textAlignment: .left, fontSize: 18, textColor: #colorLiteral(red: 0.09411764706, green: 0.07843137255, blue: 0.3803921569, alpha: 1), weight: .semibold,numOflines: 0,fitWidth: false)
    let bloodTitleLabel  = MASeconderyLabel(text: "Blood:", textAlignment: .left, fontSize: 18, textColor: .darkGray, weight: .semibold,numOflines: 0,fitWidth: false)
    let bloodLabel       = MASeconderyLabel(text: "AB", textAlignment: .left, fontSize: 18, textColor: #colorLiteral(red: 0.09411764706, green: 0.07843137255, blue: 0.3803921569, alpha: 1), weight: .semibold,numOflines: 0,fitWidth: false)
    let genderTitleLabel = MASeconderyLabel(text: "Gender:", textAlignment: .left, fontSize: 18, textColor: .darkGray, weight: .semibold,numOflines: 0,fitWidth: false)
    let genderLabel      = MASeconderyLabel(text: "Male", textAlignment: .left, fontSize: 18, textColor: #colorLiteral(red: 0.09411764706, green: 0.07843137255, blue: 0.3803921569, alpha: 1), weight: .semibold,numOflines: 0,fitWidth: false)
    let heightTitleLabel = MASeconderyLabel(text: "Height:", textAlignment: .left, fontSize: 18, textColor: .darkGray, weight: .semibold,numOflines: 0,fitWidth: false)
    let heightLabel      = MASeconderyLabel(text: "183", textAlignment: .left, fontSize: 18, textColor: #colorLiteral(red: 0.09411764706, green: 0.07843137255, blue: 0.3803921569, alpha: 1), weight: .semibold,numOflines: 0,fitWidth: false)
    let weightTitleLabel = MASeconderyLabel(text: "Weight:", textAlignment: .left, fontSize: 18, textColor: .darkGray, weight: .semibold,numOflines: 0,fitWidth: false)
    let weightLabel      = MASeconderyLabel(text: "87", textAlignment: .left, fontSize: 18, textColor: #colorLiteral(red: 0.09411764706, green: 0.07843137255, blue: 0.3803921569, alpha: 1), weight: .semibold,numOflines: 0,fitWidth: false)

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.9254901961, green: 0.9450980392, blue: 0.9803921569, alpha: 1)
        
        configureHeaderView()
        configureBackBtn()
        configureUserImage()
        configureSeconedView()
        configureNameLabel()
        configureLocationLabel()
        configureAgetitlaLabel()
        configureAgeLabel()
        configureBloodTitleLabel()
        configureBloodLabel()
        configureGenderTitleLabel()
        configureGenderLabel()
        configureHeightTitleLabel()
        configureHeightLabel()
        configureWeightTitleLabel()
        configureWeightLabel()
    }
    
    
    
    func configureHeaderView(){
        view.addSubview(headerView)
        NSLayoutConstraint.activate([
            headerView.topAnchor.constraint(equalTo: view.topAnchor),
            headerView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            headerView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            headerView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.3)
        ])
    }
    
    
    
    func configureBackBtn(){
        view.addSubview(backBtn)
        backBtn.addTarget(self, action: #selector(dismissVC), for: .touchUpInside)
        NSLayoutConstraint.activate([
            backBtn.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            backBtn.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            backBtn.widthAnchor.constraint(equalToConstant: 20),
            backBtn.heightAnchor.constraint(equalToConstant: 20)
        ])
    }
    
    
    
    @objc func dismissVC(){ navigationController?.popViewController(animated: true) }
    
    
    
    func configureUserImage(){
        headerView.addSubview(userImage)
        NSLayoutConstraint.activate([
            userImage.heightAnchor.constraint(equalToConstant: 30),
            userImage.leadingAnchor.constraint(equalTo: headerView.leadingAnchor, constant: 100),
            userImage.trailingAnchor.constraint(equalTo: headerView.trailingAnchor, constant: -100),
            userImage.centerYAnchor.constraint(equalTo: headerView.bottomAnchor)
        ])
    }
    
    
    
    func configureSeconedView(){
        view.addSubview(seconedView)
        NSLayoutConstraint.activate([
            seconedView.topAnchor.constraint(equalTo: headerView.bottomAnchor, constant: 50),
            seconedView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            seconedView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            seconedView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
    
    
    
    func configureStackView(){ view.addSubview(stackView) }
    
    
    
    func configureNameLabel(){
        seconedView.addSubview(name)
        NSLayoutConstraint.activate([
            name.topAnchor.constraint(equalTo: seconedView.topAnchor, constant: 20),
            name.leadingAnchor.constraint(equalTo: seconedView.leadingAnchor, constant: 10),
            name.trailingAnchor.constraint(equalTo: seconedView.trailingAnchor, constant: -30),
            name.heightAnchor.constraint(equalToConstant: 30)
        ])
    }
    
    
    
    func configureLocationLabel(){
        seconedView.addSubview(location)
        NSLayoutConstraint.activate([
            location.topAnchor.constraint(equalTo: name.bottomAnchor, constant: 10),
            location.leadingAnchor.constraint(equalTo: seconedView.leadingAnchor, constant: 10),
            location.trailingAnchor.constraint(equalTo: seconedView.trailingAnchor, constant: -30),
            location.heightAnchor.constraint(equalToConstant: 25)
        ])
    }
    
    
    
    func configureAgetitlaLabel(){
        seconedView.addSubview(ageTitleLabel)
        NSLayoutConstraint.activate([
            ageTitleLabel.topAnchor.constraint(equalTo: location.bottomAnchor, constant: 30),
            ageTitleLabel.leadingAnchor.constraint(equalTo: seconedView.leadingAnchor, constant: 10),
            ageTitleLabel.widthAnchor.constraint(equalToConstant: 40),
            ageTitleLabel.heightAnchor.constraint(equalToConstant: 20)
        ])
    }
    
    
    
    func configureAgeLabel(){
        
        seconedView.addSubview(ageLabel)
        NSLayoutConstraint.activate([
            ageLabel.centerYAnchor.constraint(equalTo: ageTitleLabel.centerYAnchor),
            ageLabel.leadingAnchor.constraint(equalTo: ageTitleLabel.trailingAnchor, constant: 5),
            ageLabel.widthAnchor.constraint(equalToConstant: 40),
            ageLabel.heightAnchor.constraint(equalToConstant: 20)
        ])
    }
    
    
    
    func configureBloodTitleLabel(){
        seconedView.addSubview(bloodTitleLabel)
        NSLayoutConstraint.activate([
            bloodTitleLabel.topAnchor.constraint(equalTo: ageTitleLabel.bottomAnchor, constant: 15),
            bloodTitleLabel.leadingAnchor.constraint(equalTo: seconedView.leadingAnchor, constant: 10),
            bloodTitleLabel.widthAnchor.constraint(equalToConstant: 60),
            bloodTitleLabel.heightAnchor.constraint(equalToConstant: 20)
        ])
    }
    
    
    
    func configureBloodLabel(){
        seconedView.addSubview(bloodLabel)
        NSLayoutConstraint.activate([
            bloodLabel.centerYAnchor.constraint(equalTo: bloodTitleLabel.centerYAnchor),
            bloodLabel.leadingAnchor.constraint(equalTo: bloodTitleLabel.trailingAnchor, constant: 5),
            bloodLabel.widthAnchor.constraint(equalToConstant: 40),
            bloodLabel.heightAnchor.constraint(equalToConstant: 20)
        ])
    }
    
    
    
    func configureGenderTitleLabel(){
        
        seconedView.addSubview(genderTitleLabel)
        NSLayoutConstraint.activate([
            genderTitleLabel.topAnchor.constraint(equalTo: bloodTitleLabel.bottomAnchor, constant: 15),
            genderTitleLabel.leadingAnchor.constraint(equalTo: seconedView.leadingAnchor, constant: 10),
            genderTitleLabel.widthAnchor.constraint(equalToConstant: 80),
            genderTitleLabel.heightAnchor.constraint(equalToConstant: 20)
        ])
    }
    
    
    
    func configureGenderLabel(){
        seconedView.addSubview(genderLabel)
        NSLayoutConstraint.activate([
            genderLabel.centerYAnchor.constraint(equalTo: genderTitleLabel.centerYAnchor),
            genderLabel.leadingAnchor.constraint(equalTo: genderTitleLabel.trailingAnchor, constant: 5),
            genderLabel.widthAnchor.constraint(equalToConstant: 100),
            genderLabel.heightAnchor.constraint(equalToConstant: 20)
        ])
    }
    
    
    
    func configureHeightTitleLabel(){
        seconedView.addSubview(heightTitleLabel)
        NSLayoutConstraint.activate([
            heightTitleLabel.topAnchor.constraint(equalTo: genderLabel.bottomAnchor, constant: 15),
            heightTitleLabel.leadingAnchor.constraint(equalTo: seconedView.leadingAnchor, constant: 10),
            heightTitleLabel.widthAnchor.constraint(equalToConstant: 80),
            heightTitleLabel.heightAnchor.constraint(equalToConstant: 20)
        ])
    }
    
    
    
    func configureHeightLabel(){
        seconedView.addSubview(heightLabel)
        NSLayoutConstraint.activate([
            heightLabel.centerYAnchor.constraint(equalTo: heightTitleLabel.centerYAnchor),
            heightLabel.leadingAnchor.constraint(equalTo: heightTitleLabel.trailingAnchor, constant: 5),
            heightLabel.widthAnchor.constraint(equalToConstant: 100),
            heightLabel.heightAnchor.constraint(equalToConstant: 20)
        ])
    }
    
    
    
    func configureWeightTitleLabel(){
        seconedView.addSubview(weightTitleLabel)
        NSLayoutConstraint.activate([
            weightTitleLabel.topAnchor.constraint(equalTo: heightTitleLabel.bottomAnchor, constant: 15),
            weightTitleLabel.leadingAnchor.constraint(equalTo: seconedView.leadingAnchor, constant: 10),
            weightTitleLabel.widthAnchor.constraint(equalToConstant: 80),
            weightTitleLabel.heightAnchor.constraint(equalToConstant: 20)
        ])
    }
    
    
    
    func configureWeightLabel(){
        seconedView.addSubview(weightLabel)
        NSLayoutConstraint.activate([
            weightLabel.centerYAnchor.constraint(equalTo: weightTitleLabel.centerYAnchor),
            weightLabel.leadingAnchor.constraint(equalTo: weightTitleLabel.trailingAnchor, constant: 5),
            weightLabel.widthAnchor.constraint(equalToConstant: 100),
            weightLabel.heightAnchor.constraint(equalToConstant: 20)
        ])
    }
    
}
