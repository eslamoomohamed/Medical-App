//
//  MAForumDiscussionsCell.swift
//  Medical App
//
//  Created by eslam on 6/2/21.
//

import UIKit

class MAForumDiscussionsCell: UITableViewCell {


    static let reuseID    = "FormDiscussions"
    let dateLabel         = MASeconderyLabel(text: "", textAlignment: .left, fontSize: 13, textColor: .lightGray, weight: .light,numOflines: 0,fitWidth: false)
    let cellLabel         = MASeconderyLabel(text: "", textAlignment: .left, fontSize: 18, textColor: .black, weight: .bold,numOflines: 0,fitWidth: false)
    let commentsImageView = UIImageView()
    let commentsLabel     = MASeconderyLabel(text: "", textAlignment: .right, fontSize: 15, textColor: .lightGray, weight: .semibold,numOflines: 0,fitWidth: false)
    let seeMoreBtn        = MADefaultBtn(btnTitle: "See more", titleColor: #colorLiteral(red: 0.09411764706, green: 0.07843137255, blue: 0.3803921569, alpha: 1), backgroundColor: .clear, raduis: 0)
    let bottomView        = MADefaultView(backgroundColor: .lightGray)
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.backgroundColor = #colorLiteral(red: 0.9254901961, green: 0.9450980392, blue: 0.9803921569, alpha: 1)
        selectionStyle = .none
        configureDateLabel()
        configureCellLabel()
        configureSeeMoreBtn()
        configureBottomView()
        configureCommentsImageView()
        configureCommentsLabel()
    }
    
    
    required init?(coder: NSCoder) { fatalError("init(coder:) has not been implemented") }
    
    
    func setCell(For Cell: ForumDiscussionsCellInfo){
        dateLabel.text = Cell.date
        cellLabel.text = Cell.nameOfForm
        commentsImageView.image = UIImage(named: "comment")
        commentsLabel.text      = String(Cell.numberOfComments)
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
            cellLabel.trailingAnchor.constraint(equalTo: centerXAnchor),
            cellLabel.heightAnchor.constraint(equalToConstant: 20)
        ])
    }
    
    
    private func configureCommentsImageView(){
        contentView.addSubview(commentsImageView)
        commentsImageView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            commentsImageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            commentsImageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -15),
            commentsImageView.widthAnchor.constraint(equalToConstant: 15),
            commentsImageView.heightAnchor.constraint(equalToConstant: 15)
        ])
    }
    
    
    private func configureCommentsLabel(){
        contentView.addSubview(commentsLabel)
        NSLayoutConstraint.activate([
            commentsLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            commentsLabel.trailingAnchor.constraint(equalTo: commentsImageView.leadingAnchor, constant: -5),
            commentsLabel.widthAnchor.constraint(equalToConstant: 30),
            commentsLabel.heightAnchor.constraint(equalToConstant: 15)
        ])
    }
    
    
    private func configureSeeMoreBtn(){
        contentView.addSubview(seeMoreBtn)
        seeMoreBtn.setImage(UIImage(named: "rightArrow"), for: .normal)
        seeMoreBtn.imageEdgeInsets = UIEdgeInsets(top: 3, left: 100, bottom: 0, right: 0)
        NSLayoutConstraint.activate([
            seeMoreBtn.topAnchor.constraint(equalTo: cellLabel.topAnchor, constant: 5),
            seeMoreBtn.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
            seeMoreBtn.heightAnchor.constraint(equalToConstant: 20),
            seeMoreBtn.widthAnchor.constraint(equalToConstant: 110)
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
