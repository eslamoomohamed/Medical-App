//
//  MAPaymentVC.swift
//  Medical App
//
//  Created by eslam on 6/5/21.
//

import UIKit

class MAPaymentVC: UIViewController {

    
    let backBtn         = UIButton()
    let profileBtn      = UIButton()
    let label0          = UILabel()
    let label1          = UILabel()
    
    let roundView       = MARoundedView()
    let dateLabel       = UILabel()
    let timeLabel       = UILabel()
    let locationLabel   = UILabel()
    let lineView        = MALineView()
    let messageTF       = UITextField()
    
    let checkLabel      = UILabel()
    let checkAmount     = UILabel()
    
    var collectionView: UICollectionView!

    let payNowBtn       = UIButton()
    let manageCardBtn   = UIButton()


    var card0Selected = false
    var card1Selected = false
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = #colorLiteral(red: 0.9254901961, green: 0.9450980392, blue: 0.9803921569, alpha: 1)

        configureBackBtn()
        configureProfileBtn()
        configureLAbel0()
        configureLAbel1()
        configureRoundView()
        configureAppointment()
        configureDoctorLocation()
        configureLineView()
//        configureMessageTF()
        configureCheckLabel()
        configureCheckAmount()
        configureCollectionView()
        configurePayNowBtn()
        configureManageCardBtn()
        
        
 
        
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
        dismiss(animated: true, completion: nil)


    }
    
    
    
    func configureProfileBtn(){
        
        
        view.addSubview(profileBtn)
        profileBtn.setImage(UIImage(named: "profileIcon"), for: .normal)
        profileBtn.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
        
            profileBtn.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            profileBtn.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            profileBtn.widthAnchor.constraint(equalToConstant: 20),
            profileBtn.heightAnchor.constraint(equalToConstant: 20)

        
        
        ])
        
        
        
        
    }
    
    
    
    
    func configureLAbel0(){
        
        view.addSubview(label0)
        label0.translatesAutoresizingMaskIntoConstraints = false
        label0.text = "Dr. Clara OddingOddingOddingOdding "
        label0.textAlignment = .left
        label0.textColor = .black
        label0.lineBreakMode = .byTruncatingTail
        label0.font = UIFont.systemFont(ofSize: 18, weight: .semibold)
        
        NSLayoutConstraint.activate([
        
            label0.topAnchor.constraint(equalTo: backBtn.bottomAnchor, constant: 20),
            label0.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            label0.heightAnchor.constraint(equalToConstant: 30),
            label0.widthAnchor.constraint(equalToConstant: 150)

        ])
        
    }
    
    

    
    
    func configureLAbel1(){
        
        view.addSubview(label1)
        label1.translatesAutoresizingMaskIntoConstraints = false
        label1.text = "Confirmation"
        label1.textAlignment = .left
        label1.textColor = .black
        label1.lineBreakMode = .byTruncatingTail
        label1.font = UIFont.systemFont(ofSize: 18, weight: .light)
        
        NSLayoutConstraint.activate([
        
            label1.topAnchor.constraint(equalTo: backBtn.bottomAnchor, constant: 20),
            label1.leadingAnchor.constraint(equalTo: label0.trailingAnchor),
            label1.heightAnchor.constraint(equalToConstant: 30),
            label1.widthAnchor.constraint(equalToConstant: 120)

        ])
        
    }
    
    
    
    func configureRoundView(){
        
        view.addSubview(roundView)
        roundView.backgroundColor = .white
        
        NSLayoutConstraint.activate([
        
            roundView.topAnchor.constraint(equalTo: label0.bottomAnchor, constant: 15),
            roundView.leadingAnchor.constraint(equalTo: label0.leadingAnchor),
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
        
            locationLabel.topAnchor.constraint(equalTo: roundView.bottomAnchor, constant: 5),
            locationLabel.leadingAnchor.constraint(equalTo: roundView.leadingAnchor, constant: 15),
            locationLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
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
    

    
    
    
//
//    func configureMessageTF(){
//
//        view.addSubview(messageTF)
//        messageTF.placeholder = "Message"
//        messageTF.backgroundColor = .white
//        messageTF.layer.cornerRadius = 10
//        messageTF.textAlignment = .left
//        messageTF.translatesAutoresizingMaskIntoConstraints = false
//
//        NSLayoutConstraint.activate([
//
//            messageTF.topAnchor.constraint(equalTo: lineView.bottomAnchor, constant: 20),
//            messageTF.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
//            messageTF.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
//            messageTF.heightAnchor.constraint(equalToConstant: 55)
//
//        ])
//
//
//
//    }


    

    
    
    
    func configureCheckLabel(){
        
        view.addSubview(checkLabel)
        checkLabel.translatesAutoresizingMaskIntoConstraints = false
        checkLabel.text = "Check+Scaling"
        checkLabel.textAlignment = .left
        checkLabel.textColor = #colorLiteral(red: 0.09411764706, green: 0.07843137255, blue: 0.3803921569, alpha: 1)
        checkLabel.font = UIFont.systemFont(ofSize: 20, weight: .semibold)
        checkLabel.adjustsFontSizeToFitWidth = true

        
        NSLayoutConstraint.activate([
        
            checkLabel.topAnchor.constraint(equalTo: lineView.bottomAnchor, constant: 20),
            checkLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            checkLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            checkLabel.heightAnchor.constraint(equalToConstant: 22)

        ])
        
    }
    
    
    
    
    
    func configureCheckAmount(){
        
        view.addSubview(checkAmount)
        checkAmount.translatesAutoresizingMaskIntoConstraints = false
        checkAmount.text = "124€"
        checkAmount.textAlignment = .left
        checkAmount.textColor = #colorLiteral(red: 0.09411764706, green: 0.07843137255, blue: 0.3803921569, alpha: 1)
        checkAmount.font = UIFont.systemFont(ofSize: 18, weight: .semibold)
        checkAmount.adjustsFontSizeToFitWidth = true

        
        NSLayoutConstraint.activate([
        
            checkAmount.topAnchor.constraint(equalTo: checkLabel.bottomAnchor, constant: 5),
            checkAmount.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            checkAmount.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            checkAmount.heightAnchor.constraint(equalToConstant: 20)

        ])
        
    }
    
    
    
    
    
    func configureCollectionView(){
        
        collectionView = UICollectionView(frame: .zero, collectionViewLayout: createCustomFlowLayout())
        collectionView.register(MAPaymentCardCell.self, forCellWithReuseIdentifier: MAPaymentCardCell.reuseID)
        view.addSubview(collectionView)
        
        
        collectionView.backgroundColor = #colorLiteral(red: 0.9254901961, green: 0.9450980392, blue: 0.9803921569, alpha: 1)
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
        
            collectionView.topAnchor.constraint(equalTo: checkAmount.bottomAnchor, constant: 20),
            collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
//            collectionView.heightAnchor.constraint(equalToConstant: 150)
            collectionView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.3)

        ])
        
        
    }
    
    
    func configureManageCardBtn(){
        
        view.addSubview(manageCardBtn)
        
        manageCardBtn.setTitle("Manage cards", for: .normal)
        manageCardBtn.setTitleColor(#colorLiteral(red: 0.09411764706, green: 0.07843137255, blue: 0.3803921569, alpha: 1), for: .normal)
        manageCardBtn.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .light)
        manageCardBtn.backgroundColor = .clear
        manageCardBtn.setImage(UIImage(named: "rightArrow"), for: .normal)
        manageCardBtn.imageEdgeInsets = UIEdgeInsets(top: 3, left: 135, bottom: 0, right: 0)

        
//        manageCardBtn.backgroundColor = .white
        manageCardBtn.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
        
            manageCardBtn.topAnchor.constraint(equalTo: collectionView.bottomAnchor, constant: 10),
            manageCardBtn.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            manageCardBtn.heightAnchor.constraint(equalToConstant: 20),
            manageCardBtn.widthAnchor.constraint(equalToConstant: 150),

        
        ])
        
        
        
    }
    
    
    
    func configurePayNowBtn(){
        
        view.addSubview(payNowBtn)
        payNowBtn.setTitle("Pay now", for: .normal)
        payNowBtn.backgroundColor = #colorLiteral(red: 0.1647058824, green: 0.1647058824, blue: 0.7529411765, alpha: 1)
        payNowBtn.layer.cornerRadius = 15
        payNowBtn.translatesAutoresizingMaskIntoConstraints = false
        
        
        payNowBtn.addTarget(self, action: #selector(pushAppointmentConfirmated), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
        
            payNowBtn.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -15),
            payNowBtn.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            payNowBtn.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            payNowBtn.heightAnchor.constraint(equalToConstant: 50),

        
        ])
        
        
    }
    
    @objc func pushAppointmentConfirmated(){
        
        let appointmentVC = MAAppointmentConfirmationVC()
        navigationController?.pushViewController(appointmentVC, animated: true)
        
        
    }
    
    
    
    

    
    
    
    
    
    
    
    
    
    
    
    
    
    

}






extension MAPaymentVC: UICollectionViewDataSource{
    
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MAPaymentCardCell.reuseID, for: indexPath)as! MAPaymentCardCell
        
        
        return cell
    }
    
    
        
    
}





extension MAPaymentVC: UICollectionViewDelegate{
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let index = indexPath.row


        switch index {
        case 0:
            let cell = collectionView.cellForItem(at: indexPath)
            cell?.layer.borderWidth = 2.0
            cell?.layer.borderColor = UIColor.blue.cgColor
            print("setup card zero")
            
        default:
            let cell = collectionView.cellForItem(at: indexPath)
            cell?.layer.borderWidth = 2.0
            cell?.layer.borderColor = UIColor.blue.cgColor
            print("setup card one")

        }
        
    }
    
    
    
//    func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
//        collectionView.frame.size.height = 300
//        view.layoutIfNeeded()
//
//    }
    
    
    
    
}




extension MAPaymentVC: UICollectionViewDelegateFlowLayout{
    
    
    func createCustomFlowLayout()-> UICollectionViewFlowLayout{
        
        let flow = UICollectionViewFlowLayout()
        
        let width = view.bounds.width
        let padding = CGFloat(10)
        let availableWidth = (width - padding ) / 1.2
        
        
        flow.scrollDirection      = .horizontal
        
        flow.sectionInset = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 10)
//        flow.estimatedItemSize = UICollectionViewFlowLayout.automaticSize
        flow.itemSize.width = availableWidth
        flow.itemSize.height = availableWidth / 1.6
        

        
        return flow
        
        
    }
    
    
}
