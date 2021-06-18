//
//  MAFeedback.swift
//  Medical App
//
//  Created by eslam on 6/4/21.
//

import UIKit

class MAFeedbackVC: UIViewController {

    
    let backBtn         = BGImageBtn(buttonTybe: "backIcon")
    let profileBtn      = BGImageBtn(buttonTybe: "profileIcon")
    let label0          = MASeconderyLabel(text: "Leave your feedback", textAlignment: .left, fontSize: 18, textColor: .black)
    
    let doctorImageView = UIImageView()
    let doctorName      = UILabel()
    let doctorJob       = UILabel()
    let locationLabel   = UILabel()
    let numberOfReviews = UILabel()
    let lineView        = MALineView()
    let feedbackTF      = UITextField()
    let addFeedbackBtn  = UIButton()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = #colorLiteral(red: 0.9254901961, green: 0.9450980392, blue: 0.9803921569, alpha: 1)

        configureBackBtn()
        configureProfileBtn()
        configureLAbel0()
        configureDoctorImage()
        configureDoctorName()
        configureDoctorJob()
        configureDoctorLocation()
        configureLineView()
        configureFeedbackTF()
        configureAddFeedbackBtn()
        
        

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
    
    
    @objc func dismissVC(){
        
        navigationController?.popViewController(animated: true)

    }
    
    
    
    func configureProfileBtn(){
        
        
        view.addSubview(profileBtn)

        
        NSLayoutConstraint.activate([
        
            profileBtn.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            profileBtn.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            profileBtn.widthAnchor.constraint(equalToConstant: 20),
            profileBtn.heightAnchor.constraint(equalToConstant: 20)

        
        
        ])
        
        
        
        
    }
    
    
    
    
    func configureLAbel0(){
        
        view.addSubview(label0)

        NSLayoutConstraint.activate([
        
            label0.topAnchor.constraint(equalTo: backBtn.bottomAnchor, constant: 20),
            label0.leadingAnchor.constraint(equalTo: backBtn.leadingAnchor),
            label0.heightAnchor.constraint(equalToConstant: 30),

        ])
        
    }
    
    
    
    
    func configureDoctorImage(){
        
        view.addSubview(doctorImageView)
        doctorImageView.image = UIImage(named: "DoctorImage")
        doctorImageView.layer.cornerRadius = 10
        doctorImageView.clipsToBounds = true
        doctorImageView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
        
            doctorImageView.topAnchor.constraint(equalTo: label0.bottomAnchor, constant: 15),
            doctorImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            doctorImageView.widthAnchor.constraint(equalToConstant: 130),
            doctorImageView.heightAnchor.constraint(equalToConstant: 130)

        
        ])
        
        
        
        
    }
    
    
    
    
    
    func configureDoctorName(){
        
        view.addSubview(doctorName)
        doctorName.translatesAutoresizingMaskIntoConstraints = false
        doctorName.text = "Dr. Clara Odding"
        doctorName.textAlignment = .left
        doctorName.textColor = .black
        doctorName.font = UIFont.systemFont(ofSize: 18, weight: .semibold)
        
        NSLayoutConstraint.activate([
        
            doctorName.topAnchor.constraint(equalTo: doctorImageView.topAnchor),
            doctorName.leadingAnchor.constraint(equalTo: doctorImageView.trailingAnchor, constant: 15),
            doctorName.heightAnchor.constraint(equalToConstant: 30),

        ])
        
    }
    
    
    
    func configureDoctorJob(){
        
        view.addSubview(doctorJob)
        doctorJob.translatesAutoresizingMaskIntoConstraints = false
        doctorJob.text = "Dentist"
        doctorJob.textAlignment = .left
        doctorJob.textColor = .lightGray
        doctorJob.font = UIFont.systemFont(ofSize: 18, weight: .semibold)
        
        NSLayoutConstraint.activate([
        
            doctorJob.topAnchor.constraint(equalTo: doctorName.bottomAnchor),
            doctorJob.leadingAnchor.constraint(equalTo: doctorImageView.trailingAnchor, constant: 15),
            doctorJob.heightAnchor.constraint(equalToConstant: 30),

        ])
        
    }
    
    
    func configureDoctorLocation(){
        
        view.addSubview(locationLabel)
        locationLabel.translatesAutoresizingMaskIntoConstraints = false
        locationLabel.text = "2 Rue de Ermesinde Frisange - Luxembourg 3 km"
        locationLabel.textAlignment = .left
        locationLabel.textColor = .lightGray
        locationLabel.numberOfLines = 3
        locationLabel.lineBreakMode = .byTruncatingTail
        locationLabel.font = UIFont.systemFont(ofSize: 18, weight: .semibold)
        
        NSLayoutConstraint.activate([
        
            locationLabel.topAnchor.constraint(equalTo: doctorJob.bottomAnchor),
            locationLabel.leadingAnchor.constraint(equalTo: doctorImageView.trailingAnchor, constant: 15),
            locationLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            locationLabel.heightAnchor.constraint(equalToConstant: 80),

        ])
        
    }
    
    
    
    func configureLineView(){
        
        view.addSubview(lineView)
        

        NSLayoutConstraint.activate([
        
            lineView.topAnchor.constraint(equalTo: doctorImageView.bottomAnchor, constant: 20),
            lineView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            lineView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            lineView.heightAnchor.constraint(equalToConstant: 1)

        ])
        
        
        
    }
    

    
    
    
    func configureFeedbackTF(){
        
        view.addSubview(feedbackTF)
        feedbackTF.placeholder = "Write your feedback"
        feedbackTF.backgroundColor = .white
        feedbackTF.layer.cornerRadius = 10
        feedbackTF.contentVerticalAlignment = .top
        feedbackTF.textAlignment = .left
        feedbackTF.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
        
            feedbackTF.topAnchor.constraint(equalTo: lineView.bottomAnchor, constant: 40),
            feedbackTF.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            feedbackTF.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            feedbackTF.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.3),

        ])
        
        
        
    }
    
    
    func configureAddFeedbackBtn(){
        
        view.addSubview(addFeedbackBtn)
        addFeedbackBtn.setTitle("Add feedback", for: .normal)
        addFeedbackBtn.backgroundColor = #colorLiteral(red: 0.1647058824, green: 0.1647058824, blue: 0.7529411765, alpha: 1)
        addFeedbackBtn.layer.cornerRadius = 15
        addFeedbackBtn.translatesAutoresizingMaskIntoConstraints = false
        
        
        
        NSLayoutConstraint.activate([
        
            addFeedbackBtn.topAnchor.constraint(equalTo: feedbackTF.bottomAnchor, constant: 20),
            addFeedbackBtn.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            addFeedbackBtn.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            addFeedbackBtn.heightAnchor.constraint(equalToConstant: 50),

        
        ])
        
        
    }
    

}
