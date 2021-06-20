//
//  MAAppointmentsVC.swift
//  Medical App
//
//  Created by eslam on 5/30/21.
//

import UIKit

class MAAppointmentsVC: UIViewController {

    
    let backBtn            = MAImageBtn(buttonTybe: "backIcon")
    let profileBtn         = MAImageBtn(buttonTybe: "profileIcon")
    let label0             = MASeconderyLabel(text: "My Appointments", textAlignment: .left, fontSize: 18, textColor: .black, weight: .semibold)
    let segmentView        = UIView()
    let segmentControl     = UISegmentedControl()
    let bookAppointmentBtn = UIButton()

    
    var tableView: UITableView!

    
    override func viewDidLoad() {
        super.viewDidLoad()


        view.backgroundColor = #colorLiteral(red: 0.9254901961, green: 0.9450980392, blue: 0.9803921569, alpha: 1)

        configureBackBtn()
        configureProfileBtn()
        configureLAbel0()
        configureSegmentControl()
        configureSegmentView()
        configureTableView()
        configureBookAppointmentBtn()

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
            label0.leadingAnchor.constraint(equalTo: backBtn.leadingAnchor),
            label0.heightAnchor.constraint(equalToConstant: 30),

        ])
        
    }
    
    
    
    
    
    func configureSegmentView(){
        
        view.addSubview(segmentView)
        segmentView.translatesAutoresizingMaskIntoConstraints = false
        segmentView.backgroundColor = #colorLiteral(red: 0.09411764706, green: 0.07843137255, blue: 0.3803921569, alpha: 1)
        
        NSLayoutConstraint.activate([
            
            segmentView.topAnchor.constraint(equalTo: segmentControl.bottomAnchor),
            segmentView.leadingAnchor.constraint(equalTo: segmentControl.leadingAnchor),
            segmentView.widthAnchor.constraint(equalTo: segmentControl.widthAnchor, multiplier: 1 / CGFloat(segmentControl.numberOfSegments)),
            segmentView.heightAnchor.constraint(equalToConstant: 5)
        
        ])
        
        
        
    }
    

    
    
    func configureSegmentControl(){
        
        view.addSubview(segmentControl)
        segmentControl.insertSegment(withTitle: "Upcoming", at: 0, animated: true)
        segmentControl.insertSegment(withTitle: "Past", at: 0, animated: true)
        segmentControl.selectedSegmentIndex = 0
        

        segmentControl.backgroundColor = .clear
        segmentControl.selectedSegmentTintColor = .clear
        
        
        segmentControl.setTitleTextAttributes([NSAttributedString.Key.font: UIFont(name: "DINCondensed-Bold", size: 18) as Any,NSAttributedString.Key.foregroundColor: UIColor.black], for: .normal)
        
        segmentControl.setTitleTextAttributes([NSAttributedString.Key.font: UIFont(name: "DINCondensed-Bold", size: 18) as Any,NSAttributedString.Key.foregroundColor: #colorLiteral(red: 0.09411764706, green: 0.07843137255, blue: 0.3803921569, alpha: 1)], for: .selected)
        
        segmentControl.contentHorizontalAlignment = .left
        
        
        segmentControl.addTarget(self, action: #selector(segmentChanged), for: .valueChanged)
        
        segmentControl.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
        
            segmentControl.topAnchor.constraint(equalTo: label0.bottomAnchor, constant: 10),
            segmentControl.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            segmentControl.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            segmentControl.heightAnchor.constraint(equalToConstant: 40)

        ])

        
    }
    
    
    
    func configureTableView(){
        
        tableView = UITableView(frame: .zero, style: .plain)
        view.addSubview(tableView)
        
        tableView.backgroundColor = #colorLiteral(red: 0.9254901961, green: 0.9450980392, blue: 0.9803921569, alpha: 1)
        
        tableView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
        
            tableView.topAnchor.constraint(equalTo: segmentView.bottomAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5),

        
        ])
        
        
    }
    
    
    
    

    
    
    
    func configureBookAppointmentBtn(){
        
        view.addSubview(bookAppointmentBtn)
        bookAppointmentBtn.setTitle("Book a new appointment", for: .normal)
        bookAppointmentBtn.backgroundColor = #colorLiteral(red: 0.1647058824, green: 0.1647058824, blue: 0.7529411765, alpha: 1)
        bookAppointmentBtn.layer.cornerRadius = 15
        bookAppointmentBtn.translatesAutoresizingMaskIntoConstraints = false
        
        bookAppointmentBtn.addTarget(self, action: #selector(pushpaymentVC), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
        
            bookAppointmentBtn.topAnchor.constraint(equalTo: tableView.bottomAnchor, constant: 20),
            bookAppointmentBtn.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            bookAppointmentBtn.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            bookAppointmentBtn.heightAnchor.constraint(equalToConstant: 50),

        
        ])
        
        
    }

    
    
    @objc func pushpaymentVC(){
        
        let paymentVC = MAPaymentVC()
        navigationController?.pushViewController(paymentVC, animated: true)
        
        
    }
    
    
    
    
    @objc func segmentChanged(_ sender: UISegmentedControl){
        
        UIView.animate(withDuration: 0.3, animations: {
            self.segmentView.frame.origin.x = (self.segmentControl.frame.width / CGFloat(self.segmentControl.numberOfSegments)) * CGFloat(self.segmentControl.selectedSegmentIndex)
            
        })
        
        print(sender.selectedSegmentIndex)
        

        
        
    }
    

}
