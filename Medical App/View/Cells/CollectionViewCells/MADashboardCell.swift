//
//  MADashboardCell.swift
//  Medical App
//
//  Created by eslam on 5/30/21.
//

import UIKit


class MADashboardCell: UICollectionViewCell {
    
    static let reuseID = "dashboardCell"
    let roundView      = MARoundedView(cornerRaduis: 15, with: true, backgroundColor: .white)
    let cellTitle      = MASeconderyLabel(text: "", textAlignment: .left, fontSize: 23, textColor: #colorLiteral(red: 0.09411764706, green: 0.07843137255, blue: 0.3803921569, alpha: 1), weight: .semibold,numOflines: 0,fitWidth: true)
    let imageView      = MADefaultImageView(frame: .zero)
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    
    required init?(coder: NSCoder) { fatalError("init(coder:) has not been implemented") }
    
    
    func setCell(for cellInfo: DashboardCellInfo){
        self.cellTitle.text  = cellInfo.imageTitle
        self.imageView.image = UIImage(named: cellInfo.imageName)
    }
    
    
    private func configure(){
        contentView.addSubview(roundView)
        roundView.addSubview(cellTitle)
        roundView.addSubview(imageView)
        cellTitle.numberOfLines = 2
        NSLayoutConstraint.activate([
            cellTitle.topAnchor.constraint(equalTo: roundView.topAnchor, constant: 10),
            cellTitle.leadingAnchor.constraint(equalTo: roundView.leadingAnchor, constant: 10),
            cellTitle.trailingAnchor.constraint(equalTo: roundView.trailingAnchor, constant: -10),
            cellTitle.heightAnchor.constraint(equalToConstant: 25),
            
            imageView.topAnchor.constraint(equalTo: cellTitle.bottomAnchor, constant: 5),
            imageView.leadingAnchor.constraint(equalTo: roundView.leadingAnchor),
            imageView.trailingAnchor.constraint(equalTo: roundView.trailingAnchor),
            imageView.bottomAnchor.constraint(equalTo: roundView.bottomAnchor),
            
            roundView.topAnchor.constraint(equalTo: contentView.topAnchor),
            roundView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            roundView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            roundView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
        ])
    }
    
}
