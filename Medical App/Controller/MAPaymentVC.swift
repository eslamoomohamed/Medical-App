//
//  MAPaymentVC.swift
//  Medical App
//
//  Created by eslam on 6/5/21.
//

import UIKit

class MAPaymentVC: UIViewController {
    
    let backBtn         = MAImageBtn(buttonTybe: "backIcon")
    let profileBtn      = MAImageBtn(buttonTybe: "profileIcon")
    let label0          = MASeconderyLabel(text: "Dr. Clara OddingOddingOddingOdding ", textAlignment: .left, fontSize: 18, textColor: .black, weight: .semibold,numOflines: 0,fitWidth: false)
    let label1          = MASeconderyLabel(text: "Confirmation", textAlignment: .left, fontSize: 18, textColor: .black, weight: .semibold,numOflines: 0,fitWidth: false)
    let roundView       = MARoundedView(cornerRaduis: 15, with: true, backgroundColor: .white)
    let dateLabel       = MASeconderyLabel(text: "Thu, 09 Apr", textAlignment: .left, fontSize: 20, textColor: .black, weight: .semibold,numOflines: 0,fitWidth: false)
    let timeLabel       = MASeconderyLabel(text: "12:12", textAlignment: .left, fontSize: 20, textColor: .green, weight: .semibold,numOflines: 0,fitWidth: false)
    let locationLabel   = MASeconderyLabel(text: "2 Rue de Ermesinde Frisange - Luxembourg 3 km", textAlignment: .left, fontSize: 18, textColor: .lightGray, weight: .semibold,numOflines: 2,fitWidth: false)
    let lineView        = MALineView()
    let checkLabel      = MASeconderyLabel(text: "Check+Scaling", textAlignment: .left, fontSize: 20, textColor: #colorLiteral(red: 0.09411764706, green: 0.07843137255, blue: 0.3803921569, alpha: 1), weight: .semibold,numOflines: 0,fitWidth: false)
    let checkAmount     = MASeconderyLabel(text: "124€", textAlignment: .left, fontSize: 18, textColor: #colorLiteral(red: 0.09411764706, green: 0.07843137255, blue: 0.3803921569, alpha: 1), weight: .semibold,numOflines: 0,fitWidth: false)
    var collectionView: UICollectionView!
    let manageCardBtn   = MADefaultBtn(btnTitle: "Manage cards", titleColor: #colorLiteral(red: 0.09411764706, green: 0.07843137255, blue: 0.3803921569, alpha: 1), backgroundColor: .clear, raduis: 0)
    let payNowBtn       = MADefaultBtn(btnTitle: "Pay now", titleColor: .white, backgroundColor: #colorLiteral(red: 0.1647058824, green: 0.1647058824, blue: 0.7529411765, alpha: 1), raduis: 15)



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
        configureCheckLabel()
        configureCheckAmount()
        configureCollectionView()
        configurePayNowBtn()
        configureManageCardBtn()
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
            label0.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            label0.heightAnchor.constraint(equalToConstant: 30),
            label0.widthAnchor.constraint(equalToConstant: 150)
        ])
    }
    
    
    
    func configureLAbel1(){
        view.addSubview(label1)
        NSLayoutConstraint.activate([
            label1.topAnchor.constraint(equalTo: backBtn.bottomAnchor, constant: 20),
            label1.leadingAnchor.constraint(equalTo: label0.trailingAnchor),
            label1.heightAnchor.constraint(equalToConstant: 30),
            label1.widthAnchor.constraint(equalToConstant: 120)
        ])
    }
    
    
    
    func configureRoundView(){
        view.addSubview(roundView)
        NSLayoutConstraint.activate([
            roundView.topAnchor.constraint(equalTo: label0.bottomAnchor, constant: 15),
            roundView.leadingAnchor.constraint(equalTo: label0.leadingAnchor),
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
    
    
    
    func configureDoctorLocation(){
        
        view.addSubview(locationLabel)
        NSLayoutConstraint.activate([
            locationLabel.topAnchor.constraint(equalTo: roundView.bottomAnchor, constant: 5),
            locationLabel.leadingAnchor.constraint(equalTo: roundView.leadingAnchor, constant: 15),
            locationLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
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
    
    
    
    func configureCheckLabel(){
        
        view.addSubview(checkLabel)
        NSLayoutConstraint.activate([
            checkLabel.topAnchor.constraint(equalTo: lineView.bottomAnchor, constant: 20),
            checkLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            checkLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            checkLabel.heightAnchor.constraint(equalToConstant: 22)
        ])
    }
    
    
    
    func configureCheckAmount(){
        view.addSubview(checkAmount)
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
        collectionView.delegate        = self
        collectionView.dataSource      = self
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            collectionView.topAnchor.constraint(equalTo: checkAmount.bottomAnchor, constant: 20),
            collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            collectionView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.3)
        ])
    }
    
    
    
    func configureManageCardBtn(){
        view.addSubview(manageCardBtn)
        manageCardBtn.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .light)
        manageCardBtn.setImage(UIImage(named: "rightArrow"), for: .normal)
        manageCardBtn.imageEdgeInsets = UIEdgeInsets(top: 3, left: 135, bottom: 0, right: 0)
        NSLayoutConstraint.activate([
            manageCardBtn.topAnchor.constraint(equalTo: collectionView.bottomAnchor, constant: 10),
            manageCardBtn.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            manageCardBtn.heightAnchor.constraint(equalToConstant: 20),
            manageCardBtn.widthAnchor.constraint(equalToConstant: 150)
        ])
    }
    
    
    
    func configurePayNowBtn(){
        view.addSubview(payNowBtn)
        payNowBtn.addTarget(self, action: #selector(pushAppointmentConfirmated), for: .touchUpInside)
        NSLayoutConstraint.activate([
            payNowBtn.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -15),
            payNowBtn.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            payNowBtn.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            payNowBtn.heightAnchor.constraint(equalToConstant: 50)
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
    
}



extension MAPaymentVC: UICollectionViewDelegateFlowLayout{
    
    func createCustomFlowLayout()-> UICollectionViewFlowLayout{
        let flow = UICollectionViewFlowLayout()
        let width = view.bounds.width
        let padding = CGFloat(10)
        let availableWidth = (width - padding ) / 1.2
        flow.scrollDirection      = .horizontal
        flow.sectionInset = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 10)
        flow.itemSize.width = availableWidth
        flow.itemSize.height = availableWidth / 1.6
        return flow
    }
    
}
