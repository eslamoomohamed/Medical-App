//
//  DashboardVC.swift
//  Medical App
//
//  Created by eslam on 5/30/21.
//

import UIKit

class DashboardVC: UIViewController {

    let headerView = MADefaultView(backgroundColor: .white)
    let menuBtn    = MAImageBtn(buttonTybe: "menuIcon")
    let profileBtn = MAImageBtn(buttonTybe: "profileIcon")
    let label0     = MASeconderyLabel(text: "Dashboard", textAlignment: .left, fontSize: 25, textColor: #colorLiteral(red: 0.09411764706, green: 0.07843137255, blue: 0.3803921569, alpha: 1) , weight: .semibold,numOflines: 0,fitWidth: false)
    
    var collectionView: UICollectionView!
    
    let arrOfCells = [DashboardCellInfo(imageName: "image0", imageTitle: "Appointments"),DashboardCellInfo(imageName: "image1", imageTitle: "Records"),DashboardCellInfo(imageName: "image2", imageTitle: "Forum"),DashboardCellInfo(imageName: "image3", imageTitle: "Account Settings"),]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.9254901961, green: 0.9450980392, blue: 0.9803921569, alpha: 1)

        configureHeaderView()
        configureMenuBtn()
        configureProfileBtn()
        configureLAbel0()
        configureCollectionView()
    }


    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
    
    func configureHeaderView(){
        view.addSubview(headerView)
        NSLayoutConstraint.activate([
            headerView.topAnchor.constraint(equalTo: view.topAnchor),
            headerView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            headerView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            headerView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.15)
        ])
    }
    
    
    
    func configureMenuBtn(){
        headerView.addSubview(menuBtn)
        menuBtn.addTarget(self, action: #selector(ShowMenu), for: .touchUpInside)
        NSLayoutConstraint.activate([
            menuBtn.topAnchor.constraint(equalTo: headerView.safeAreaLayoutGuide.topAnchor, constant: 10),
            menuBtn.leadingAnchor.constraint(equalTo: headerView.leadingAnchor, constant: 10),
            menuBtn.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.06),
            menuBtn.heightAnchor.constraint(equalTo: menuBtn.widthAnchor)
        ])
    }
    
    
    
    @objc func ShowMenu(){ presentMenuOverVC() }
    
    
    
    func configureProfileBtn(){
        headerView.addSubview(profileBtn)
        profileBtn.addTarget(self, action: #selector(pushProfileVC), for: .touchUpInside)
        NSLayoutConstraint.activate([
            profileBtn.topAnchor.constraint(equalTo: headerView.safeAreaLayoutGuide.topAnchor, constant: 10),
            profileBtn.trailingAnchor.constraint(equalTo: headerView.trailingAnchor, constant: -10),
            profileBtn.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.06),
            profileBtn.heightAnchor.constraint(equalTo: profileBtn.widthAnchor)

        ])
    }
    
    
    
    @objc func pushProfileVC(){
        let profileVC = MAPrrofileVC()
        navigationController?.pushViewController(profileVC, animated: true)
    }
    
    
    
    func configureLAbel0(){
        headerView.addSubview(label0)
        NSLayoutConstraint.activate([
            label0.topAnchor.constraint(equalTo: menuBtn.bottomAnchor, constant: 10),
            label0.leadingAnchor.constraint(equalTo: menuBtn.leadingAnchor)
        ])
    }
    
    
    
    func configureCollectionView(){
        collectionView = UICollectionView(frame: .zero, collectionViewLayout: UIHelper.createFlowLayout(in: self.view))
        collectionView.register(MADashboardCell.self, forCellWithReuseIdentifier: MADashboardCell.reuseID)
        view.addSubview(collectionView)
        collectionView.dataSource = self
        collectionView.delegate   = self
        collectionView.backgroundColor = #colorLiteral(red: 0.9254901961, green: 0.9450980392, blue: 0.9803921569, alpha: 1)
        collectionView.isScrollEnabled = false
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            collectionView.topAnchor.constraint(equalTo: headerView.bottomAnchor, constant: 5),
            collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            collectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
    
}



extension DashboardVC: UICollectionViewDelegate, UICollectionViewDataSource{
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MADashboardCell.reuseID, for: indexPath) as! MADashboardCell
        cell.setCell(for: arrOfCells[indexPath.row])
        return cell
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let index = indexPath.row
        print (index)
        switch indexPath.row {
        case 0:
            let appointmentVC = MAAppointmentsVC()
            navigationController?.pushViewController(appointmentVC, animated: true)
            print("setup Appointment")
            print(index)
        case 1:
            print("setup Records")
            let medicalRecordsVC = MAMedicalRecordsVC()
            navigationController?.pushViewController(medicalRecordsVC, animated: true)

        case 2:
            print("setup Forum")
            let forumDiscussionsVC = MAForumDiscussionsVC()
            navigationController?.pushViewController(forumDiscussionsVC, animated: true)

        default:
            print("setup Account Settings")
            let profileVC = MAPrrofileVC()
            navigationController?.pushViewController(profileVC, animated: true)
        }
    }
}
