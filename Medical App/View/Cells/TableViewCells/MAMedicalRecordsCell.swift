//
//  MAMedicalRecordsCell.swift
//  Medical App
//
//  Created by eslam on 6/2/21.
//

import UIKit

class MAMedicalRecordsCell: UITableViewCell {


    
    static let reuseID = "medicalCell"
    
    let dateLabel         = UILabel()
    let cellLabel         = UILabel()
    let downloadBtn        = UIButton()
    let bottomView        = UIView()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)

        configureDateLabel()
        configureCellLabel()
        configureSeeMoreBtn()
        configureBottomView()

        
        contentView.backgroundColor = #colorLiteral(red: 0.9254901961, green: 0.9450980392, blue: 0.9803921569, alpha: 1)
        
        selectionStyle = .none
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    
    func setCell(For Cell: MedicalRecordCellInfo){
        
        dateLabel.text = Cell.date
        cellLabel.text = Cell.nameOfRecord

        
    }
    
    
    
    
    
    private func configureDateLabel(){
        contentView.addSubview(dateLabel)
        
        dateLabel.textColor = .lightGray
        
        dateLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
        
            dateLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            dateLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            dateLabel.widthAnchor.constraint(equalToConstant: 100),
            dateLabel.heightAnchor.constraint(equalToConstant: 15),

        ])
        
        
        
    }
    
    
    
    
    private func configureCellLabel(){
        contentView.addSubview(cellLabel)
        
        cellLabel.textColor = .black
        
        cellLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
        
            cellLabel.topAnchor.constraint(equalTo: dateLabel.bottomAnchor, constant: 15),
            cellLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
//            cellLabel.widthAnchor.constraint(equalToConstant: 160),
            cellLabel.trailingAnchor.constraint(equalTo: centerXAnchor, constant: 20),
            cellLabel.heightAnchor.constraint(equalToConstant: 20),

        ])
        
        
        
    }
    
    
    
    

    
    
    
    
    private func configureSeeMoreBtn(){
        
        contentView.addSubview(downloadBtn)
        
        downloadBtn.setTitle("Download", for: .normal)
        downloadBtn.setTitleColor(#colorLiteral(red: 0.09411764706, green: 0.07843137255, blue: 0.3803921569, alpha: 1), for: .normal)
        downloadBtn.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .light)
        downloadBtn.backgroundColor = .clear
        downloadBtn.setImage(UIImage(named: "downloadArrow"), for: .normal)
        downloadBtn.imageEdgeInsets = UIEdgeInsets(top: 0, left: -8, bottom: 0, right: 0)

        
        
        downloadBtn.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
        
            downloadBtn.topAnchor.constraint(equalTo: cellLabel.topAnchor, constant: 5),
            downloadBtn.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
            downloadBtn.heightAnchor.constraint(equalToConstant: 20),
            downloadBtn.widthAnchor.constraint(equalToConstant: 110),

        
        ])
        
        
        
    }
    
    
    
    
    
    
    
    private func configureBottomView(){
        contentView.addSubview(bottomView)
        
        bottomView.backgroundColor = .lightGray
        
        bottomView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
        
            bottomView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10),
            bottomView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            bottomView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            bottomView.heightAnchor.constraint(equalToConstant: 2)
        
        
        ])
        
        
        
    }
    
    
    
    
    
}
