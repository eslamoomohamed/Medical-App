//
//  MAAppointmentConfirmationVC.swift
//  Medical App
//
//  Created by eslam on 6/4/21.
//

import UIKit

class MAAppointmentConfirmationVC: UIViewController {

    
    let backBtn         = BGImageBtn(buttonTybe: "backIcon")
    let profileBtn      = BGImageBtn(buttonTybe: "profileIcon")
    let label0          = MASeconderyLabel(text: "Appointment Confirmed!", textAlignment: .left, fontSize: 18, textColor: .black)
    let confirmImage    = UIImageView()
    let roundView       = MARoundedView()
    let dateLabel       = UILabel()
    let timeLabel       = UILabel()
    
    let doctorName      = UILabel()
    let doctorJob       = UILabel()
    let locationLabel   = UILabel()
    let numberOfReviews = UILabel()
    let lineView        = MALineView()
    let confirmImage1   = UIImageView()
    let addToClender    = UIButton()
    let remainingTime   = UILabel()
    
    
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
        confirmImage.image = UIImage(named: "confirmImage")
        confirmImage.contentMode = .center
        
        confirmImage.translatesAutoresizingMaskIntoConstraints = false
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
        
//            label0.topAnchor.constraint(equalTo: backBtn.bottomAnchor, constant: 20),
            label0.leadingAnchor.constraint(equalTo: confirmImage.trailingAnchor, constant: 15),
            label0.centerYAnchor.constraint(equalTo: confirmImage.centerYAnchor),
            label0.heightAnchor.constraint(equalToConstant: 30),

        ])
        
    }
    
    
    
    
    func configureRoundView(){
        
        view.addSubview(roundView)
        roundView.backgroundColor = .white
        
        NSLayoutConstraint.activate([
        
            roundView.topAnchor.constraint(equalTo: confirmImage.bottomAnchor, constant: 20),
            roundView.leadingAnchor.constraint(equalTo: confirmImage.leadingAnchor),
            roundView.widthAnchor.constraint(equalToConstant: 200),
            roundView.heightAnchor.constraint(equalToConstant: 60),

        ])
        
        
        
        
    }
    
    
    
    func configureAppointment(){
        
        roundView.addSubview(dateLabel)
        roundView.addSubview(timeLabel)
        
        dateLabel.text = "Thu, 09 Apr"
        timeLabel.text = "12:12"
        
        
        
        dateLabel.textAlignment = .left
        dateLabel.textColor = .black
        dateLabel.font = UIFont.systemFont(ofSize: 20, weight: .semibold)
        
        timeLabel.textAlignment = .left
        timeLabel.textColor = .green
        timeLabel.font = UIFont.systemFont(ofSize: 20, weight: .semibold)
        
        
        dateLabel.translatesAutoresizingMaskIntoConstraints = false
        timeLabel.translatesAutoresizingMaskIntoConstraints = false
        
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
        doctorName.translatesAutoresizingMaskIntoConstraints = false
        doctorName.text = "Dr. Clara Odding"
        doctorName.textAlignment = .left
        doctorName.textColor = .black
        doctorName.font = UIFont.systemFont(ofSize: 18, weight: .semibold)
        
        NSLayoutConstraint.activate([
        
            doctorName.topAnchor.constraint(equalTo: roundView.bottomAnchor, constant: 10),
            doctorName.leadingAnchor.constraint(equalTo: roundView.leadingAnchor, constant: 15),
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
            doctorJob.leadingAnchor.constraint(equalTo: roundView.leadingAnchor, constant: 15),
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
            locationLabel.leadingAnchor.constraint(equalTo: roundView.leadingAnchor, constant: 15),
            locationLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            locationLabel.heightAnchor.constraint(equalToConstant: 80),

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
        confirmImage1.image = UIImage(named: "confirmAppointmentImage")
        confirmImage1.contentMode = .center
        

        
        confirmImage1.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
        
            confirmImage1.topAnchor.constraint(equalTo: locationLabel.bottomAnchor, constant: 60),
            confirmImage1.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            confirmImage1.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            confirmImage1.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.2),

        
        ])
        
        
        
    }
    
    
    
    
    func configureAddToClenderBtn(){
        
        view.addSubview(addToClender)
        addToClender.setTitle("Add to calendar", for: .normal)
        addToClender.backgroundColor = #colorLiteral(red: 0.1647058824, green: 0.1647058824, blue: 0.7529411765, alpha: 1)
        addToClender.layer.cornerRadius = 15
        addToClender.translatesAutoresizingMaskIntoConstraints = false
        
        
        
        NSLayoutConstraint.activate([
        
//            addToClender.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20),
            addToClender.topAnchor.constraint(equalTo: confirmImage1.bottomAnchor, constant: 60),
            addToClender.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            addToClender.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            addToClender.heightAnchor.constraint(equalToConstant: 50),

        
        ])
        
        
    }
    
    
    
    
    func configureRemainingTime(){
        
        view.addSubview(remainingTime)
        remainingTime.translatesAutoresizingMaskIntoConstraints = false
        remainingTime.text = "2 days 3 hours before the appointment"
        remainingTime.textAlignment = .center
        remainingTime.textColor = .black
        remainingTime.font = UIFont.systemFont(ofSize: 18, weight: .semibold)
        remainingTime.adjustsFontSizeToFitWidth = true
        
        NSLayoutConstraint.activate([
        
            remainingTime.topAnchor.constraint(equalTo: addToClender.bottomAnchor, constant: 10),
            remainingTime.leadingAnchor.constraint(equalTo: addToClender.leadingAnchor, constant: 30),
            remainingTime.trailingAnchor.constraint(equalTo: addToClender.trailingAnchor, constant: -30),
        ])
        
    }
    
    
}
