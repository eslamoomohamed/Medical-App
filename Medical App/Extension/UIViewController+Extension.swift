//
//  UIViewController+Extension.swift
//  Medical App
//
//  Created by eslam on 6/1/21.
//

import UIKit

fileprivate var containerView: UIView!

extension UIViewController{
    
    
    
    func presentMAAlertOnMainThread(title: String, bodyMessage:String, btnTitle: String){
        
        DispatchQueue.main.async {
            let alertVC                    = MAAlertVC(title:title, message:bodyMessage, btnTitle:btnTitle)
            alertVC.modalPresentationStyle = .overFullScreen
            alertVC.modalTransitionStyle   = .flipHorizontal
            self.present(alertVC, animated: true)
            
        }
    }
    
    func presentMenuOverVC(){
        
        
        DispatchQueue.main.async {
            let menuVC = MAMenuVC()
            menuVC.modalPresentationStyle = .overFullScreen
            menuVC.modalTransitionStyle   = .crossDissolve
            self.present(menuVC, animated: true)
        }
        
    }
    
    
    
    
    func showLodingView(){
        containerView                  = UIView(frame: view.bounds)
        containerView.backgroundColor  = .systemBackground
        containerView.alpha            = 0
        view.addSubview(containerView)
        UIView.animate(withDuration: 0.25) {containerView.alpha = 0.8}
        
        let activityAndicator                                       = UIActivityIndicatorView(style: .large)
        activityAndicator.translatesAutoresizingMaskIntoConstraints = false
        containerView.addSubview(activityAndicator)
            NSLayoutConstraint.activate([
                activityAndicator.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                activityAndicator.centerYAnchor.constraint(equalTo: view.centerYAnchor)
            ])
        activityAndicator.startAnimating()
    }

    
    func dismissActivityIndicator(){
        DispatchQueue.main.async {
        containerView.removeFromSuperview()
        containerView = nil
        }
        
    }
    
    
    
    
    
    
    
    
}
