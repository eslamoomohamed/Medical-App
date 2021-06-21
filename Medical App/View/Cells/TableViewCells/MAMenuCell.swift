//
//  MAMenuCell.swift
//  Medical App
//
//  Created by eslam on 6/1/21.
//

import UIKit

class MAMenuCell: UITableViewCell {

    static let reuseID = "menuCell"
    let imageView0     = MADefaultImageView(with: "")
    let label          = MASeconderyLabel(text: "", textAlignment: .left, fontSize: 17, textColor: .black, weight: .light,numOflines: 0,fitWidth: false)
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        selectionStyle = .none
        configure()
    }
    
    
    required init?(coder: NSCoder) { fatalError("init(coder:) has not been implemented") }
    
    
    func setCell(for indexPath: Int){
        switch indexPath {
        case 0:
            imageView0.image = UIImage(named: "My Appointments")
            label.text = "My Appointment"
        case 1:
            imageView0.image = UIImage(named: "New Appointments")
            label.text = "New Appointments"
        case 2:
            imageView0.image = UIImage(named: "Medical Records")
            label.text = "Medical Records"
        case 3:
            imageView0.image = UIImage(named: "Forum")
            label.text = "Forum"
        case 4:
            imageView0.image = UIImage(named: "Statistics")
            label.text = "Statistics"
        case 5:
            imageView0.image = UIImage(named: "Account Settings")
            label.text = "Account Settings"
        default:
            imageView0.image = UIImage(named: "Help")
            label.text = "Help"
        }
    }
    
    
    private func configure(){
        contentView.addSubview(imageView0)
        contentView.addSubview(label)
        NSLayoutConstraint.activate([
            imageView0.topAnchor.constraint(equalTo: contentView.topAnchor),
            imageView0.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 5),
            imageView0.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            imageView0.widthAnchor.constraint(equalToConstant: 20),

            label.topAnchor.constraint(equalTo: contentView.topAnchor),
            label.leadingAnchor.constraint(equalTo: imageView0.trailingAnchor, constant: 5),
            label.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            label.trailingAnchor.constraint(equalTo: contentView.trailingAnchor)
        ])
    }
    
}
