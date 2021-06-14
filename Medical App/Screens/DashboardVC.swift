//
//  DashboardVC.swift
//  Medical App
//
//  Created by eslam on 5/30/21.
//

import UIKit

class DashboardVC: UIViewController {

    let headerView = UIView()
    let menuBtn    = UIButton()
    let profileBtn = UIButton()
    let label0     = UILabel()
    
    let searhBar = UISearchBar()
    
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
        
        
//        configureSearchBar()

    }


    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
    
    func configureHeaderView(){
        
        view.addSubview(headerView)
        headerView.backgroundColor = .white
        headerView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
        
            headerView.topAnchor.constraint(equalTo: view.topAnchor),
            headerView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            headerView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            headerView.heightAnchor.constraint(equalToConstant: 130)

        
        ])
        
        
        
    }
    
    
    
    func configureMenuBtn(){
        
        
        headerView.addSubview(menuBtn)
        menuBtn.setImage(UIImage(named: "menuIcon"), for: .normal)
        
        menuBtn.addTarget(self, action: #selector(ShowMenu), for: .touchUpInside)
        
        
        menuBtn.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
        
            menuBtn.topAnchor.constraint(equalTo: headerView.safeAreaLayoutGuide.topAnchor, constant: 10),
            menuBtn.leadingAnchor.constraint(equalTo: headerView.leadingAnchor, constant: 10),
            menuBtn.widthAnchor.constraint(equalToConstant: 20),
            menuBtn.heightAnchor.constraint(equalToConstant: 20)

        
        
        ])
        
        
        
        
    }
    
    
    @objc func ShowMenu(){
        
        presentMenuOverVC()

    }
    
    
    
    func configureProfileBtn(){
        
        
        headerView.addSubview(profileBtn)
        profileBtn.setImage(UIImage(named: "profileIcon"), for: .normal)
        profileBtn.translatesAutoresizingMaskIntoConstraints = false
        
        
        profileBtn.addTarget(self, action: #selector(pushProfileVC), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
        
            profileBtn.topAnchor.constraint(equalTo: headerView.safeAreaLayoutGuide.topAnchor, constant: 10),
            profileBtn.trailingAnchor.constraint(equalTo: headerView.trailingAnchor, constant: -10),
            profileBtn.widthAnchor.constraint(equalToConstant: 20),
            profileBtn.heightAnchor.constraint(equalToConstant: 20)

        
        
        ])
        
        
        
        
    }
    
    
    
    @objc func pushProfileVC(){
        
        let profileVC = MAPrrofileVC()
        navigationController?.pushViewController(profileVC, animated: true)
        

//        profileVC.modalPresentationStyle = .overFullScreen
//        present(profileVC, animated: true)
    }
    
    
    
    
    func configureLAbel0(){
        
        headerView.addSubview(label0)
        label0.translatesAutoresizingMaskIntoConstraints = false
        label0.text = "Dashboard"
        label0.textAlignment = .left
        label0.textColor = #colorLiteral(red: 0.09411764706, green: 0.07843137255, blue: 0.3803921569, alpha: 1)
        label0.font = UIFont.systemFont(ofSize: 25, weight: .semibold)
        
        NSLayoutConstraint.activate([
        
            label0.topAnchor.constraint(equalTo: menuBtn.bottomAnchor, constant: 10),
            label0.leadingAnchor.constraint(equalTo: menuBtn.leadingAnchor),
            label0.heightAnchor.constraint(equalToConstant: 30),

        ])
        
    }
    
    
    func configureSearchBar(){
        
        view.addSubview(searhBar)
        searhBar.placeholder = "Search"
        searhBar.backgroundColor = .white

        
        searhBar.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
        
            searhBar.topAnchor.constraint(equalTo: headerView.bottomAnchor, constant: 10),
            searhBar.leadingAnchor.constraint(equalTo: headerView.leadingAnchor, constant: 10),
            searhBar.trailingAnchor.constraint(equalTo: headerView.trailingAnchor, constant: -10),
            

        
        ])
        
    }
    
    
    
    
    func configureCollectionView(){
        
        collectionView = UICollectionView(frame: .zero, collectionViewLayout: createFlowLayout())
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
            collectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor),

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
    
    
    
    func createFlowLayout()-> UICollectionViewFlowLayout{

        let width                       = view.bounds.width
        let height                      = view.bounds.height
        let padding: CGFloat            = 15
        let minimumItemSpacing: CGFloat = 15
        let availableWidth              = width - (padding * 2) - minimumItemSpacing
        let itemSize                    = availableWidth / 2
        let availableHeight             = height - (padding * 2) - minimumItemSpacing - 150
        let itemHeight                  = availableHeight / 2
        let flowLayout                  = UICollectionViewFlowLayout()
        flowLayout.sectionInset         = UIEdgeInsets(top: padding, left: padding, bottom: padding, right: padding)
        flowLayout.itemSize             = CGSize(width: itemSize, height: itemHeight)
        return flowLayout
        
        
    }
    
    
    
    
    

    
    
    
    
    
    
    
}
