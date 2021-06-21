//
//  MAAlertVC.swift
//  Medical App
//
//  Created by eslam on 6/7/21.
//

import UIKit

class MAAlertVC: UIViewController {
    
    
    let containerView = MAAlertView()
    let titleLabel    = MATitleLabel(textAlignment: .center, fontSize: 18)
    let bodyLabel     = MATitleLabel(textAlignment: .center, fontSize: 16)
    let ActionBtn     = MADefaultBtn(btnTitle: "OK", titleColor: .white, backgroundColor: #colorLiteral(red: 0.1647058824, green: 0.1647058824, blue: 0.7529411765, alpha: 1), raduis: 15)

    var alertTitle: String?
    var alertMessage: String?
    var AlertBtnTittle: String?
    var padding: CGFloat = 20

    override func viewDidLoad() {
        super.viewDidLoad()
        configureContainerView()
        configureTileLabel()
        configureBodyLabel()
        configureCallActionButton()
    }
    
    
    
    init(title: String, message: String, btnTitle: String) {
        super.init(nibName: nil, bundle: nil)
        self.alertTitle = title
        self.alertMessage = message
        self.AlertBtnTittle = btnTitle
    }
    
    
    required init?(coder: NSCoder) { fatalError("init(coder:) has not been implemented") }
    
    
    
    func configureContainerView(){
        view.addSubview(containerView)
        NSLayoutConstraint.activate([
            containerView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            containerView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            containerView.heightAnchor.constraint(equalToConstant: 240),
            containerView.widthAnchor.constraint(equalToConstant: 300)
        ])
    }
    
    
    
    func configureTileLabel(){
        containerView.addSubview(titleLabel)
        titleLabel.text = alertTitle
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: containerView.topAnchor, constant: padding),
            titleLabel.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: padding),
            titleLabel.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -padding),
            titleLabel.heightAnchor.constraint(equalToConstant: 28)
        
        ])
    }
    
    
    
    func configureBodyLabel(){
        containerView.addSubview(bodyLabel)
        bodyLabel.text = alertMessage ?? "Unable to complete request"
        bodyLabel.numberOfLines = 4
        NSLayoutConstraint.activate([
            bodyLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 6),
            bodyLabel.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: padding),
            bodyLabel.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -padding),
            bodyLabel.heightAnchor.constraint(equalToConstant: 150)
        ])
    }
    
    
    
    func configureCallActionButton(){
        containerView.addSubview(ActionBtn)
        ActionBtn.addTarget(self, action: #selector(dismissVC), for: .touchUpInside)
        NSLayoutConstraint.activate([
            ActionBtn.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -padding),
            ActionBtn.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: padding),
            ActionBtn.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -padding),
            ActionBtn.heightAnchor.constraint(equalToConstant: 28)
        ])
    }
    
    
    @objc func dismissVC(){ dismiss(animated: true) }
    
}
