//
//  MAAppointmentConfirmationVC.swift
//  Medical App
//
//  Created by eslam on 6/4/21.
//

import UIKit

class MAAppointmentConfirmationVC: UIViewController {

    
    let backBtn         = MAImageBtn(buttonTybe: "backIcon")
    let profileBtn      = MAImageBtn(buttonTybe: "profileIcon")
    let label0          = MASeconderyLabel(text: "Appointment Confirmed!", textAlignment: .left, fontSize: 18, textColor: .black, weight: .semibold,numOflines: 0,fitWidth: false)
    let confirmImage    = MADefaultImageView(with: "confirmImage")
    let roundView       = MARoundedView(cornerRaduis: 15, with: true, backgroundColor: .white)
    let dateLabel       = MASeconderyLabel(text: "Thu, 09 Apr", textAlignment: .left, fontSize: 20, textColor: .black, weight: .semibold,numOflines: 0,fitWidth: false)
    let timeLabel       = MASeconderyLabel(text: "12:12", textAlignment: .left, fontSize: 20, textColor: .green, weight: .semibold,numOflines: 0,fitWidth: false)
    
    let doctorName      = MASeconderyLabel(text: "Dr. Clara Odding", textAlignment: .left, fontSize: 18, textColor: .black, weight: .semibold,numOflines: 0,fitWidth: false)
    let doctorJob       = MASeconderyLabel(text: "Dentist", textAlignment: .left, fontSize: 18, textColor: .lightGray, weight: .semibold,numOflines: 0,fitWidth: false)
    let locationLabel   = MASeconderyLabel(text: "2 Rue de Ermesinde Frisange - Luxembourg 3 km", textAlignment: .left, fontSize: 18, textColor: .lightGray, weight: .semibold,numOflines: 2,fitWidth: false)
    let lineView        = MALineView()
    let confirmImage1   = MADefaultImageView(with: "confirmAppointmentImage")
    let addToClender    = MADefaultBtn(btnTitle: "Add to calendar", titleColor: .white, backgroundColor: #colorLiteral(red: 0.1647058824, green: 0.1647058824, blue: 0.7529411765, alpha: 1), raduis: 15)
    let remainingTime   = MASeconderyLabel(text: "2 days 3 hours before the appointment", textAlignment: .center, fontSize: 18, textColor: .black, weight: .semibold,numOflines: 0,fitWidth: true)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.9254901961, green: 0.9450980392, blue: 0.9803921569, alpha: 1)

        configureBackBtn()
        configureProfileBtn()
        configureConfirmImageView()
        configureLAbel0()
        configureRoundView()
        configureAppointment()
        configureDoctorName()
        configureDoctorJob()
        configureDoctorLocation()
        configureLineView()
        configureConfirmImage1()
        configureAddToClenderBtn()
        configureRemainingTime()
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
        dismiss(animated: true, completion: nil)
    }
    
    
    
    func configureProfileBtn(){
        view.addSubview(profileBtn)
        profileBtn.addTarget(self, action: #selector(pushProfileVC), for: .touchUpInside)
        NSLayoutConstraint.activate([
            profileBtn.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            profileBtn.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            profileBtn.widthAnchor.constraint(equalToConstant: 20),
            profileBtn.heightAnchor.constraint(equalToConstant: 20)
        ])
    }
    
    
    
    @objc func pushProfileVC(){
        let profileVC = MAPrrofileVC()
        navigationController?.pushViewController(profileVC, animated: true)
    }
    
    
    
    func configureConfirmImageView(){
        view.addSubview(confirmImage)
        NSLayoutConstraint.activate([
            confirmImage.topAnchor.constraint(equalTo: backBtn.bottomAnchor, constant: 25),
            confirmImage.leadingAnchor.constraint(equalTo: backBtn.leadingAnchor, constant: 5),
            confirmImage.heightAnchor.constraint(equalToConstant: 16),
            confirmImage.widthAnchor.constraint(equalToConstant: 16)
        ])
    }
    
    
    
    func configureLAbel0(){
        view.addSubview(label0)
        NSLayoutConstraint.activate([
            label0.leadingAnchor.constraint(equalTo: confirmImage.trailingAnchor, constant: 15),
            label0.centerYAnchor.constraint(equalTo: confirmImage.centerYAnchor),
            label0.heightAnchor.constraint(equalToConstant: 30)
        ])
    }
    
    
    
    func configureRoundView(){
        view.addSubview(roundView)
        NSLayoutConstraint.activate([
            roundView.topAnchor.constraint(equalTo: confirmImage.bottomAnchor, constant: 20),
            roundView.leadingAnchor.constraint(equalTo: confirmImage.leadingAnchor),
            roundView.widthAnchor.constraint(equalToConstant: 200),
            roundView.heightAnchor.constraint(equalToConstant: 60)
        ])
    }
    
    
    
    func configureAppointment(){
        roundView.addSubview(dateLabel)
        roundView.addSubview(timeLabel)
        NSLayoutConstraint.activate([
            timeLabel.topAnchor.constraint(equalTo: roundView.topAnchor),
            timeLabel.trailingAnchor.constraint(equalTo: roundView.trailingAnchor, constant: -10),
            timeLabel.bottomAnchor.constraint(equalTo: roundView.bottomAnchor),
            timeLabel.widthAnchor.constraint(equalToConstant: 50),
            
            dateLabel.topAnchor.constraint(equalTo: roundView.topAnchor),
            dateLabel.leadingAnchor.constraint(equalTo: roundView.leadingAnchor, constant: 10),
            dateLabel.trailingAnchor.constraint(equalTo: timeLabel.leadingAnchor, constant: -3),
            dateLabel.bottomAnchor.constraint(equalTo: roundView.bottomAnchor)
        ])
    }
    
    
    
    func configureDoctorName(){
        view.addSubview(doctorName)
        NSLayoutConstraint.activate([
            doctorName.topAnchor.constraint(equalTo: roundView.bottomAnchor, constant: 10),
            doctorName.leadingAnchor.constraint(equalTo: roundView.leadingAnchor, constant: 15),
            doctorName.heightAnchor.constraint(equalToConstant: 30)
        ])
    }
    
    
    
    func configureDoctorJob(){
        view.addSubview(doctorJob)
        NSLayoutConstraint.activate([
            doctorJob.topAnchor.constraint(equalTo: doctorName.bottomAnchor),
            doctorJob.leadingAnchor.constraint(equalTo: roundView.leadingAnchor, constant: 15),
            doctorJob.heightAnchor.constraint(equalToConstant: 30)
        ])
    }
    
    
    
    func configureDoctorLocation(){
        view.addSubview(locationLabel)
        locationLabel.numberOfLines = 3
        NSLayoutConstraint.activate([
            locationLabel.topAnchor.constraint(equalTo: doctorJob.bottomAnchor),
            locationLabel.leadingAnchor.constraint(equalTo: roundView.leadingAnchor, constant: 15),
            locationLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            locationLabel.heightAnchor.constraint(equalToConstant: 80)
        ])
    }
    
    
    
    func configureLineView(){
        view.addSubview(lineView)
        NSLayoutConstraint.activate([
            lineView.topAnchor.constraint(equalTo: locationLabel.bottomAnchor),
            lineView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            lineView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            lineView.heightAnchor.constraint(equalToConstant: 1)
        ])
    }
    
    
    
    func configureConfirmImage1(){
        view.addSubview(confirmImage1)
        NSLayoutConstraint.activate([
            confirmImage1.topAnchor.constraint(equalTo: locationLabel.bottomAnchor, constant: 60),
            confirmImage1.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            confirmImage1.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            confirmImage1.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.2)
        ])
    }
    
    
    
    func configureAddToClenderBtn(){
        view.addSubview(addToClender)
        NSLayoutConstraint.activate([
            addToClender.topAnchor.constraint(equalTo: confirmImage1.bottomAnchor, constant: 60),
            addToClender.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            addToClender.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            addToClender.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    
    
    func configureRemainingTime(){
        view.addSubview(remainingTime)
        NSLayoutConstraint.activate([
            remainingTime.topAnchor.constraint(equalTo: addToClender.bottomAnchor, constant: 10),
            remainingTime.leadingAnchor.constraint(equalTo: addToClender.leadingAnchor, constant: 30),
            remainingTime.trailingAnchor.constraint(equalTo: addToClender.trailingAnchor, constant: -30)
        ])
    }
    
}
