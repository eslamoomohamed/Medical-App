//
//  MAMedicalRecordsCell.swift
//  Medical App
//
//  Created by eslam on 6/2/21.
//

import UIKit

class MAMedicalRecordsCell: UITableViewCell {
    
    static let reuseID = "medicalCell"
    let dateLabel      = MASeconderyLabel(text: "", textAlignment: .left, fontSize: 13, textColor: .lightGray, weight: .light,numOflines: 0,fitWidth: false)
    let cellLabel      = MASeconderyLabel(text: "", textAlignment: .left, fontSize: 18, textColor: .black, weight: .bold,numOflines: 0,fitWidth: false)
    let downloadBtn    = MADefaultBtn(btnTitle: "Download", titleColor: #colorLiteral(red: 0.09411764706, green: 0.07843137255, blue: 0.3803921569, alpha: 1), backgroundColor: .clear, raduis: 0)
    let bottomView     = MADefaultView(backgroundColor: .lightGray)
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.backgroundColor = #colorLiteral(red: 0.9254901961, green: 0.9450980392, blue: 0.9803921569, alpha: 1)
        selectionStyle = .none
        configureDateLabel()
        configureCellLabel()
        configureDownloadBtn()
        configureBottomView()
    }
    
    
    required init?(coder: NSCoder) { fatalError("init(coder:) has not been implemented") }
    
    
    func setCell(For Cell: MedicalRecordCellInfo){
        dateLabel.text = Cell.date
        cellLabel.text = Cell.nameOfRecord
    }
    
    
    private func configureDateLabel(){
        contentView.addSubview(dateLabel)
        NSLayoutConstraint.activate([
            dateLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            dateLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            dateLabel.widthAnchor.constraint(equalToConstant: 100),
            dateLabel.heightAnchor.constraint(equalToConstant: 15)
        ])
    }
    
    
    private func configureCellLabel(){
        contentView.addSubview(cellLabel)
        NSLayoutConstraint.activate([
            cellLabel.topAnchor.constraint(equalTo: dateLabel.bottomAnchor, constant: 15),
            cellLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            cellLabel.trailingAnchor.constraint(equalTo: centerXAnchor, constant: 20),
            cellLabel.heightAnchor.constraint(equalToConstant: 20)
        ])
    }
    
    
    private func configureDownloadBtn(){
        contentView.addSubview(downloadBtn)
        downloadBtn.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .light)
        downloadBtn.setImage(UIImage(named: "downloadArrow"), for: .normal)
        downloadBtn.imageEdgeInsets = UIEdgeInsets(top: 0, left: -8, bottom: 0, right: 0)
        NSLayoutConstraint.activate([
            downloadBtn.topAnchor.constraint(equalTo: cellLabel.topAnchor, constant: 5),
            downloadBtn.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
            downloadBtn.heightAnchor.constraint(equalToConstant: 20),
            downloadBtn.widthAnchor.constraint(equalToConstant: 110)
        ])
    }
    
    
    private func configureBottomView(){
        contentView.addSubview(bottomView)
        NSLayoutConstraint.activate([
            bottomView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10),
            bottomView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            bottomView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            bottomView.heightAnchor.constraint(equalToConstant: 2)
        ])
    }
}
