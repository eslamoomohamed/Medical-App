//
//  MAMenuVC.swift
//  Medical App
//
//  Created by eslam on 6/1/21.
//

import UIKit

class MAMenuVC: UIViewController {

    
    
    let containerView    = UIView()
    let headerView       = UIView()
    let profileImageView = UIImageView()
    let nameLabel        = UILabel()
    let locationLabel    = UILabel()
    let closeBtn         = UIButton()
    let logoutBtn        = UIButton()
    
    let containerView2   = MARightBottomRoundView()
    var tableView: UITableView!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        configureContainerView()
        configureHeaderView()
        configureCloseBtn()
        configureProfileImage()
        configureNameLabel()
        configureLocationLabel()
        configureContainerView2()
        configureLogoutBtn()
        configureTableView()
        
        
    }
    
    
    
    
    
    func configureContainerView(){
        view.addSubview(containerView)
        containerView.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.75)


        
        
        
        containerView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
        
            containerView.topAnchor.constraint(equalTo: view.topAnchor),
            containerView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            containerView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            containerView.trailingAnchor.constraint(equalTo: view.trailingAnchor),

        ])
        
        
        
    }

    
    
    
    
    func configureHeaderView(){
        containerView.addSubview(headerView)
        headerView.backgroundColor = #colorLiteral(red: 0.9254901961, green: 0.9450980392, blue: 0.9803921569, alpha: 1)
        
        headerView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
        
            headerView.topAnchor.constraint(equalTo: view.topAnchor),
            headerView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            headerView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.7),
            headerView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.25),

        ])
        
        
        
    }
    
    
    func configureCloseBtn(){
        headerView.addSubview(closeBtn)
        closeBtn.setImage(UIImage(named: "closeIcon"), for: .normal)
        closeBtn.translatesAutoresizingMaskIntoConstraints = false
        
        closeBtn.addTarget(self, action: #selector(hideMenu), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
        
            closeBtn.topAnchor.constraint(equalTo: headerView.safeAreaLayoutGuide.topAnchor, constant: 30),
            closeBtn.trailingAnchor.constraint(equalTo: headerView.trailingAnchor, constant: -10),
            closeBtn.widthAnchor.constraint(equalToConstant: 20),
            closeBtn.heightAnchor.constraint(equalToConstant: 20)

        
        
        ])
        
        
        
    }
    
    
    
    
    @objc func hideMenu(){
        dismiss(animated: true)
        
        
    }
    
    
    
    func configureProfileImage(){
        
        view.addSubview(profileImageView)
        profileImageView.contentMode = .scaleToFill
        profileImageView.image = UIImage(named: "Logo")
        
        profileImageView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
        
            profileImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 45),
            profileImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            profileImageView.widthAnchor.constraint(equalToConstant: 60),
            profileImageView.heightAnchor.constraint(equalToConstant: 60)

        
        ])
        
        
    }
    
    
    
    func configureNameLabel(){
        
        headerView.addSubview(nameLabel)
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.text = "Sophie Garnier"
        nameLabel.textAlignment = .left
        nameLabel.textColor = #colorLiteral(red: 0.1647058824, green: 0.1647058824, blue: 0.7529411765, alpha: 1)
        nameLabel.font = UIFont.systemFont(ofSize: 25, weight: .semibold)
        nameLabel.adjustsFontSizeToFitWidth = true
        
        NSLayoutConstraint.activate([
        
            nameLabel.topAnchor.constraint(equalTo: closeBtn.bottomAnchor),
            nameLabel.trailingAnchor.constraint(equalTo: closeBtn.leadingAnchor),
            nameLabel.leadingAnchor.constraint(equalTo: profileImageView.trailingAnchor, constant: 5),
            nameLabel.heightAnchor.constraint(equalToConstant: 28),

        ])
        
    }
    
    
    
    
    func configureLocationLabel(){
        
        headerView.addSubview(locationLabel)
        locationLabel.translatesAutoresizingMaskIntoConstraints = false
        locationLabel.text = "Luxembourg"
        locationLabel.textAlignment = .left
        locationLabel.textColor = #colorLiteral(red: 0.09411764706, green: 0.07843137255, blue: 0.3803921569, alpha: 1)
        locationLabel.font = UIFont.systemFont(ofSize: 18, weight: .semibold)
        locationLabel.adjustsFontSizeToFitWidth = true

        
        NSLayoutConstraint.activate([
        
            locationLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 5),
            locationLabel.trailingAnchor.constraint(equalTo: closeBtn.leadingAnchor),
            locationLabel.leadingAnchor.constraint(equalTo: profileImageView.trailingAnchor, constant: 5),
            locationLabel.heightAnchor.constraint(equalToConstant: 22),

        ])
        
    }

    
    
    func configureContainerView2(){
        
        view.addSubview(containerView2)
        
        NSLayoutConstraint.activate([
        
            containerView2.topAnchor.constraint(equalTo: headerView.bottomAnchor),
            containerView2.leadingAnchor.constraint(equalTo: headerView.leadingAnchor),
            containerView2.trailingAnchor.constraint(equalTo: headerView.trailingAnchor),
            containerView2.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -40),
        
        
        ])
        
    }

    
    
    
    func configureLogoutBtn(){
        
        containerView2.addSubview(logoutBtn)
        logoutBtn.setTitle("Logout", for: .normal)
        logoutBtn.setImage(UIImage(named: "Logout"), for: .normal)
        logoutBtn.backgroundColor = .white
        logoutBtn.imageEdgeInsets = UIEdgeInsets(top: 0, left: 5, bottom: 0, right: 0)
        logoutBtn.titleEdgeInsets = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 0)
        logoutBtn.setTitleColor(.black, for: .normal)
        logoutBtn.contentHorizontalAlignment = .left
        
        logoutBtn.addTarget(self, action: #selector(signOutBtnTap), for: .touchUpInside)
        
        logoutBtn.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
        
            logoutBtn.bottomAnchor.constraint(equalTo: containerView2.bottomAnchor),
            logoutBtn.heightAnchor.constraint(equalToConstant: 50),
            logoutBtn.leadingAnchor.constraint(equalTo: containerView2.leadingAnchor, constant: 5),
            logoutBtn.trailingAnchor.constraint(equalTo: containerView2.trailingAnchor, constant: -30)
        
        
        ])
        
    }
    
    
    
    @objc func signOutBtnTap(){
        
        let userDefualt = UserDefaults.standard
        userDefualt.removeObject(forKey: "token")
        let rootVC = SignInVC()
        rootVC.modalPresentationStyle = .overFullScreen
        present(rootVC, animated: true)
        
        print("signOutBtnTapped")
        
    }
    
    
    
    func configureTableView(){
        
        tableView = UITableView(frame: .zero, style: .plain)
        containerView2.addSubview(tableView)
        tableView.backgroundColor = .white
        tableView.separatorStyle = .none
        tableView.isScrollEnabled = false
        
        tableView.register(MAMenuCell.self, forCellReuseIdentifier: MAMenuCell.reuseID)
        
        tableView.dataSource = self
        tableView.delegate = self
        
        
        tableView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
        
            tableView.topAnchor.constraint(equalTo: headerView.bottomAnchor),
            tableView.leadingAnchor.constraint(equalTo: containerView2.leadingAnchor,constant: 5),
            tableView.trailingAnchor.constraint(equalTo: containerView2.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: logoutBtn.topAnchor),

        
        ])
        
        
        
    }
    
    
    
    
    


}





extension MAMenuVC: UITableViewDataSource, UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 7
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: MAMenuCell.reuseID, for: indexPath) as! MAMenuCell
        cell.setCell(for: indexPath.row)
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return tableView.frame.size.height / 10
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let index = indexPath.row
        
        switch index {
        case 0:
            let appointmentVC = MAAppointmentsVC()
            appointmentVC.modalPresentationStyle = .overFullScreen
            present(appointmentVC, animated: true)
            print("setup Appointment")
        case 1:
   
            print("New Appointment")
        case 2:
            let medicalRecordsVC = MAMedicalRecordsVC()
            medicalRecordsVC.modalPresentationStyle = .overFullScreen
            present(medicalRecordsVC, animated: true)
            print("Medical Records")
        case 3:
            let forumDiscussionsVC = MAForumDiscussionsVC()
            forumDiscussionsVC.modalPresentationStyle = .overFullScreen
            present(forumDiscussionsVC, animated: true)
            print("Forum")
        case 4:

            print("Statistics")
        case 5:
            
            print("Account Settings")
        default:

            print("setup Help")
        }
        
    }
    
    
    
}
