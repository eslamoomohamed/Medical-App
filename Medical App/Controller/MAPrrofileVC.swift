//
//  MAPrrofileVC.swift
//  Medical App
//
//  Created by eslam on 6/4/21.
//

import UIKit

class MAPrrofileVC: UIViewController {

    
    let headerView  = UIView()
    let backBtn     = UIButton()
    let userImage   = UIImageView()
    let seconedView = UIView()
    
    let stackView        = UIStackView()
    let name             = UILabel()
    let location         = UILabel()
    let ageTitleLabel    = UILabel()
    let ageLabel         = UILabel()
    let bloodTitleLabel  = UILabel()
    let bloodLabel       = UILabel()
    let genderTitleLabel = UILabel()
    let genderLabel      = UILabel()
    let heightTitleLabel = UILabel()
    let heightLabel      = UILabel()
    let weightTitleLabel = UILabel()
    let weightLabel      = UILabel()

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
        headerView.backgroundColor = #colorLiteral(red: 0.1963549266, green: 0.1783242283, blue: 0.8873584812, alpha: 1)
        
        headerView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
        
            headerView.topAnchor.constraint(equalTo: view.topAnchor),
            headerView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            headerView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            headerView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.3)

        ])
        
        
    }
    
    
    
    
    
    func configureBackBtn(){
        
        
        view.addSubview(backBtn)
        backBtn.setImage(UIImage(named: "backIcon"), for: .normal)
        backBtn.translatesAutoresizingMaskIntoConstraints = false
        
        backBtn.addTarget(self, action: #selector(dismissVC), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
        
            backBtn.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            backBtn.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            backBtn.widthAnchor.constraint(equalToConstant: 20),
            backBtn.heightAnchor.constraint(equalToConstant: 20)

        
        
        ])

        
    }
    
    
    @objc func dismissVC(){
        
        navigationController?.popViewController(animated: true)
//        dismiss(animated: true, completion: nil)
        
        
    }
    
    
    
    
    func configureUserImage(){
        
        headerView.addSubview(userImage)
        userImage.image = UIImage(named: "Logo")
        userImage.contentMode = .center
        userImage.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
        
            userImage.heightAnchor.constraint(equalToConstant: 30),
            userImage.leadingAnchor.constraint(equalTo: headerView.leadingAnchor, constant: 100),
            userImage.trailingAnchor.constraint(equalTo: headerView.trailingAnchor, constant: -100),
            userImage.centerYAnchor.constraint(equalTo: headerView.bottomAnchor)

        
        ])
        
        
    }
    
    
    
    
    
    func configureSeconedView(){
        
        view.addSubview(seconedView)
        seconedView.backgroundColor = #colorLiteral(red: 0.9254901961, green: 0.9450980392, blue: 0.9803921569, alpha: 1)
        
        seconedView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
        
            seconedView.topAnchor.constraint(equalTo: headerView.bottomAnchor, constant: 50),
            seconedView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            seconedView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            seconedView.bottomAnchor.constraint(equalTo: view.bottomAnchor)

        ])
        
        
    }

    
    
    func configureStackView(){
        
        view.addSubview(stackView)
        
        
    }
    
    
    func configureNameLabel(){
        
        seconedView.addSubview(name)
        name.text = "Eslam mohamed abd elsadek"
        name.textAlignment = .left
        name.font = UIFont.systemFont(ofSize: 25, weight: .semibold)
        name.textColor = #colorLiteral(red: 0.1647058824, green: 0.1647058824, blue: 0.7529411765, alpha: 1)
        
        name.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
        
            name.topAnchor.constraint(equalTo: seconedView.topAnchor, constant: 20),
            name.leadingAnchor.constraint(equalTo: seconedView.leadingAnchor, constant: 10),
            name.trailingAnchor.constraint(equalTo: seconedView.trailingAnchor, constant: -30),
            name.heightAnchor.constraint(equalToConstant: 30)

        ])
        
        
        
    }
    
    
    
    func configureLocationLabel(){
        
        seconedView.addSubview(location)
        location.text = "Luxembourg"
        location.textAlignment = .left
        location.font = UIFont.systemFont(ofSize: 22, weight: .semibold)
        location.textColor = #colorLiteral(red: 0.09411764706, green: 0.07843137255, blue: 0.3803921569, alpha: 1)
        
        location.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
        
            location.topAnchor.constraint(equalTo: name.bottomAnchor, constant: 10),
            location.leadingAnchor.constraint(equalTo: seconedView.leadingAnchor, constant: 10),
            location.trailingAnchor.constraint(equalTo: seconedView.trailingAnchor, constant: -30),
            location.heightAnchor.constraint(equalToConstant: 25)

        ])
        
        
        
    }
    
    
    
    
    
    
    
    func configureAgetitlaLabel(){
        
        seconedView.addSubview(ageTitleLabel)
        ageTitleLabel.text = "Age: "
        ageTitleLabel.textAlignment = .left
        ageTitleLabel.font = UIFont.systemFont(ofSize: 18, weight: .semibold)
        ageTitleLabel.textColor = .darkGray
        
        ageTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
        
            ageTitleLabel.topAnchor.constraint(equalTo: location.bottomAnchor, constant: 30),
            ageTitleLabel.leadingAnchor.constraint(equalTo: seconedView.leadingAnchor, constant: 10),
            ageTitleLabel.widthAnchor.constraint(equalToConstant: 40),
            ageTitleLabel.heightAnchor.constraint(equalToConstant: 20)

        ])
        
        
    }
    
    
    
    
    
    func configureAgeLabel(){
        
        seconedView.addSubview(ageLabel)
        ageLabel.text = "50"
        ageLabel.textAlignment = .left
        ageLabel.font = UIFont.systemFont(ofSize: 18, weight: .semibold)
        ageLabel.textColor = #colorLiteral(red: 0.09411764706, green: 0.07843137255, blue: 0.3803921569, alpha: 1)
        
        ageLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
        
            ageLabel.centerYAnchor.constraint(equalTo: ageTitleLabel.centerYAnchor),
            ageLabel.leadingAnchor.constraint(equalTo: ageTitleLabel.trailingAnchor, constant: 5),
            ageLabel.widthAnchor.constraint(equalToConstant: 40),
            ageLabel.heightAnchor.constraint(equalToConstant: 20)

        ])
        
        
    }
    
    
    
    
    
    
    
    func configureBloodTitleLabel(){
        
        seconedView.addSubview(bloodTitleLabel)
        bloodTitleLabel.text = "Blood:"
        bloodTitleLabel.textAlignment = .left
        bloodTitleLabel.font = UIFont.systemFont(ofSize: 18, weight: .semibold)
        bloodTitleLabel.textColor = .darkGray
        
        bloodTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
        
            bloodTitleLabel.topAnchor.constraint(equalTo: ageTitleLabel.bottomAnchor, constant: 15),
            bloodTitleLabel.leadingAnchor.constraint(equalTo: seconedView.leadingAnchor, constant: 10),
            bloodTitleLabel.widthAnchor.constraint(equalToConstant: 60),
            bloodTitleLabel.heightAnchor.constraint(equalToConstant: 20)

        ])
        
        
    }
    
    
    
    
    
    func configureBloodLabel(){
        
        seconedView.addSubview(bloodLabel)
        bloodLabel.text = "AB"
        bloodLabel.textAlignment = .left
        bloodLabel.font = UIFont.systemFont(ofSize: 18, weight: .semibold)
        bloodLabel.textColor = #colorLiteral(red: 0.09411764706, green: 0.07843137255, blue: 0.3803921569, alpha: 1)
        
        bloodLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
        
            bloodLabel.centerYAnchor.constraint(equalTo: bloodTitleLabel.centerYAnchor),
            bloodLabel.leadingAnchor.constraint(equalTo: bloodTitleLabel.trailingAnchor, constant: 5),
            bloodLabel.widthAnchor.constraint(equalToConstant: 40),
            bloodLabel.heightAnchor.constraint(equalToConstant: 20)

        ])
        
        
    }

    
    
    
    
    
    func configureGenderTitleLabel(){
        
        seconedView.addSubview(genderTitleLabel)
        genderTitleLabel.text = "Gender:"
        genderTitleLabel.textAlignment = .left
        genderTitleLabel.font = UIFont.systemFont(ofSize: 18, weight: .semibold)
        genderTitleLabel.textColor = .darkGray
        
        genderTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
        
            genderTitleLabel.topAnchor.constraint(equalTo: bloodTitleLabel.bottomAnchor, constant: 15),
            genderTitleLabel.leadingAnchor.constraint(equalTo: seconedView.leadingAnchor, constant: 10),
            genderTitleLabel.widthAnchor.constraint(equalToConstant: 80),
            genderTitleLabel.heightAnchor.constraint(equalToConstant: 20)

        ])
        
        
    }
    
    
    
    
    
    func configureGenderLabel(){
        
        seconedView.addSubview(genderLabel)
        genderLabel.text = "Male"
        genderLabel.textAlignment = .left
        genderLabel.font = UIFont.systemFont(ofSize: 18, weight: .semibold)
        genderLabel.textColor = #colorLiteral(red: 0.09411764706, green: 0.07843137255, blue: 0.3803921569, alpha: 1)
        
        genderLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
        
            genderLabel.centerYAnchor.constraint(equalTo: genderTitleLabel.centerYAnchor),
            genderLabel.leadingAnchor.constraint(equalTo: genderTitleLabel.trailingAnchor, constant: 5),
            genderLabel.widthAnchor.constraint(equalToConstant: 100),
            genderLabel.heightAnchor.constraint(equalToConstant: 20)

        ])
        
        
    }
    
    
    
    
    
    
    func configureHeightTitleLabel(){
        
        seconedView.addSubview(heightTitleLabel)
        heightTitleLabel.text = "Height:"
        heightTitleLabel.textAlignment = .left
        heightTitleLabel.font = UIFont.systemFont(ofSize: 18, weight: .semibold)
        heightTitleLabel.textColor = .darkGray
        
        heightTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
        
            heightTitleLabel.topAnchor.constraint(equalTo: genderLabel.bottomAnchor, constant: 15),
            heightTitleLabel.leadingAnchor.constraint(equalTo: seconedView.leadingAnchor, constant: 10),
            heightTitleLabel.widthAnchor.constraint(equalToConstant: 80),
            heightTitleLabel.heightAnchor.constraint(equalToConstant: 20)

        ])
        
        
    }
    
    
    
    
    
    func configureHeightLabel(){
        
        seconedView.addSubview(heightLabel)
        heightLabel.text = "24"
        heightLabel.textAlignment = .left
        heightLabel.font = UIFont.systemFont(ofSize: 18, weight: .semibold)
        heightLabel.textColor = #colorLiteral(red: 0.09411764706, green: 0.07843137255, blue: 0.3803921569, alpha: 1)
        
        heightLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
        
            heightLabel.centerYAnchor.constraint(equalTo: heightTitleLabel.centerYAnchor),
            heightLabel.leadingAnchor.constraint(equalTo: heightTitleLabel.trailingAnchor, constant: 5),
            heightLabel.widthAnchor.constraint(equalToConstant: 100),
            heightLabel.heightAnchor.constraint(equalToConstant: 20)

        ])
        
        
    }
    
    
    func configureWeightTitleLabel(){
        
        seconedView.addSubview(weightTitleLabel)
        weightTitleLabel.text = "Weight:"
        weightTitleLabel.textAlignment = .left
        weightTitleLabel.font = UIFont.systemFont(ofSize: 18, weight: .semibold)
        weightTitleLabel.textColor = .darkGray
        
        weightTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
        
            weightTitleLabel.topAnchor.constraint(equalTo: heightTitleLabel.bottomAnchor, constant: 15),
            weightTitleLabel.leadingAnchor.constraint(equalTo: seconedView.leadingAnchor, constant: 10),
            weightTitleLabel.widthAnchor.constraint(equalToConstant: 80),
            weightTitleLabel.heightAnchor.constraint(equalToConstant: 20)

        ])
        
        
    }
    
    
    
    
    
    func configureWeightLabel(){
        
        seconedView.addSubview(weightLabel)
        weightLabel.text = "87.5"
        weightLabel.textAlignment = .left
        weightLabel.font = UIFont.systemFont(ofSize: 18, weight: .semibold)
        weightLabel.textColor = #colorLiteral(red: 0.09411764706, green: 0.07843137255, blue: 0.3803921569, alpha: 1)
        
        weightLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
        
            weightLabel.centerYAnchor.constraint(equalTo: weightTitleLabel.centerYAnchor),
            weightLabel.leadingAnchor.constraint(equalTo: weightTitleLabel.trailingAnchor, constant: 5),
            weightLabel.widthAnchor.constraint(equalToConstant: 100),
            weightLabel.heightAnchor.constraint(equalToConstant: 20)

        ])
        
        
    }
    
    
    
    
    

}
