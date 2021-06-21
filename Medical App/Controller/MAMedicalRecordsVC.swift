//
//  MAMedicalRecordsVC.swift
//  Medical App
//
//  Created by eslam on 6/2/21.
//

import UIKit
import Firebase

class MAMedicalRecordsVC: UIViewController {

    
//    let db = Firestore.firestore()

    let backBtn            = MAImageBtn(buttonTybe: "backIcon")
    let profileBtn         = MAImageBtn(buttonTybe: "profileIcon")
    let label0             = MASeconderyLabel(text: "Medical Records", textAlignment: .left, fontSize: 18, textColor: .black, weight: .light ,numOflines: 0,fitWidth: false)
    let segmentView        = MADefaultView(backgroundColor: #colorLiteral(red: 0.09411764706, green: 0.07843137255, blue: 0.3803921569, alpha: 1))
    let segmentControl     = UISegmentedControl()
    
    
    
    var tableView: UITableView!

    var arrOfRecords = [MedicalRecordCellInfo(date: "18/02/2020", nameOfRecord: "Cardiologist - Steven Pauliner"),MedicalRecordCellInfo(date: "18/02/2020", nameOfRecord: "Cardiologist - Steven Pauliner"),MedicalRecordCellInfo(date: "18/02/2020", nameOfRecord: "Cardiologist - Steven Pauliner"),MedicalRecordCellInfo(date: "18/02/2020", nameOfRecord: "Cardiologist - Steven Pauliner"),MedicalRecordCellInfo(date: "18/02/2020", nameOfRecord: "Cardiologist - Steven Pauliner"),MedicalRecordCellInfo(date: "18/02/2020", nameOfRecord: "Cardiologist - Steven Pauliner"),MedicalRecordCellInfo(date: "18/02/2020", nameOfRecord: "Cardiologist - Steven Pauliner"),MedicalRecordCellInfo(date: "18/02/2020", nameOfRecord: "Cardiologist - Steven Pauliner"),MedicalRecordCellInfo(date: "18/02/2020", nameOfRecord: "Cardiologist - Steven Pauliner"),]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.9254901961, green: 0.9450980392, blue: 0.9803921569, alpha: 1)
        
        configureBackBtn()
        configureProfileBtn()
        configureLAbel0()
        configureSegmentControl()
        configureSegmentView()
        configureTableView()
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
    
    
    
    @objc func dismissVC(){ navigationController?.popViewController(animated: true) }
    
    
    
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
            label0.heightAnchor.constraint(equalToConstant: 30)
        ])
    }
    
    
    
    func configureSegmentControl(){
        view.addSubview(segmentControl)
        segmentControl.insertSegment(withTitle: "Clinics", at: 0, animated: true)
        segmentControl.insertSegment(withTitle: "Lab tests", at: 1, animated: true)
        segmentControl.insertSegment(withTitle: "Medicines", at: 2, animated: true)
        segmentControl.selectedSegmentIndex       = 0
        segmentControl.backgroundColor            = .clear
        segmentControl.selectedSegmentTintColor   = .clear
        segmentControl.contentHorizontalAlignment = .left
        segmentControl.setTitleTextAttributes([NSAttributedString.Key.font: UIFont(name: "DINCondensed-Bold", size: 18) as Any,NSAttributedString.Key.foregroundColor: UIColor.black], for: .normal)
        segmentControl.setTitleTextAttributes([NSAttributedString.Key.font: UIFont(name: "DINCondensed-Bold", size: 18) as Any,NSAttributedString.Key.foregroundColor: #colorLiteral(red: 0.09411764706, green: 0.07843137255, blue: 0.3803921569, alpha: 1)], for: .selected)
        segmentControl.addTarget(self, action: #selector(segmentChanged), for: .valueChanged)
        
        segmentControl.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            segmentControl.topAnchor.constraint(equalTo: label0.bottomAnchor, constant: 20),
            segmentControl.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            segmentControl.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            segmentControl.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
    
    
    
    func configureSegmentView(){
        view.addSubview(segmentView)
        NSLayoutConstraint.activate([
            segmentView.topAnchor.constraint(equalTo: segmentControl.bottomAnchor),
            segmentView.leadingAnchor.constraint(equalTo: segmentControl.leadingAnchor),
            segmentView.widthAnchor.constraint(equalTo: segmentControl.widthAnchor, multiplier: 1 / CGFloat(segmentControl.numberOfSegments)),
            segmentView.heightAnchor.constraint(equalToConstant: 5)
        ])
    }
    
    
    
    func configureTableView(){
        tableView = UITableView(frame: .zero, style: .plain)
        tableView.register(MAMedicalRecordsCell.self, forCellReuseIdentifier: MAMedicalRecordsCell.reuseID)
        view.addSubview(tableView)
        tableView.backgroundColor = #colorLiteral(red: 0.9254901961, green: 0.9450980392, blue: 0.9803921569, alpha: 1)
        tableView.separatorStyle  = .none
        tableView.delegate        = self
        tableView.dataSource      = self
        tableView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: segmentView.bottomAnchor, constant: 5),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
    
    
    
    @objc func segmentChanged(_ sender: UISegmentedControl){
        UIView.animate(withDuration: 0.3, animations: {
            self.segmentView.frame.origin.x = (self.segmentControl.frame.width / CGFloat(self.segmentControl.numberOfSegments)) * CGFloat(self.segmentControl.selectedSegmentIndex)
        })
        print(sender.selectedSegmentIndex)
        switch sender.selectedSegmentIndex {
        case 0:
            self.tableView.reloadData()
        case 1:
            self.tableView.reloadData()
        default:
            self.tableView.reloadData()
        }
    }

}


extension MAMedicalRecordsVC: UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let selectedIndex = self.segmentControl.selectedSegmentIndex
          switch selectedIndex{
          case 0:
            return arrOfRecords.count
          case 1:
              return arrOfRecords.count - 5
          default:
              return 0
          }
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: MAMedicalRecordsCell.reuseID, for: indexPath) as! MAMedicalRecordsCell
        let selectedIndex = self.segmentControl.selectedSegmentIndex
          switch selectedIndex{
          case 0:
            cell.setCell(For: arrOfRecords[indexPath.row])
            return cell
          case 1:
            cell.setCell(For: arrOfRecords[indexPath.row])
            return cell
          default:
            cell.setCell(For: arrOfRecords[indexPath.row])
            return cell
          }
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90
    }
    
}


