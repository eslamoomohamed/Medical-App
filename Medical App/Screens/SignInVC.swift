//
//  SignInVC.swift
//  Medical App
//
//  Created by eslam on 5/29/21.
//

import UIKit
import FirebaseAuth



class SignInVC: UIViewController {

    let imageView   = MADefaultImageView(with: "Logo")
    let label0      = MASeconderyLabel(text: "Welcome", textAlignment: .center, fontSize: 25, textColor: #colorLiteral(red: 0.09411764706, green: 0.07843137255, blue: 0.3803921569, alpha: 1), weight: .semibold,numOflines: 0,fitWidth: false)
    let label1      = MASeconderyLabel(text: "Sign in to continue", textAlignment: .center, fontSize: 18, textColor: .black, weight: .light,numOflines: 0,fitWidth: false)
    let mobileBtn   = MADefaultBtn(btnTitle: "Sign in with mobile number", titleColor: .white, backgroundColor: #colorLiteral(red: 0.1647058824, green: 0.1647058824, blue: 0.7529411765, alpha: 1), raduis: 15)
    let label2      = MASeconderyLabel(text: "OR", textAlignment: .center, fontSize: 18, textColor: .black, weight: .light,numOflines: 0,fitWidth: false)
    let signUpBtn   = MADefaultBtn(btnTitle: "Sign Up with Email", titleColor: .white, backgroundColor: #colorLiteral(red: 0.1647058824, green: 0.1647058824, blue: 0.7529411765, alpha: 1), raduis: 15)
    let label3      = MASeconderyLabel(text: "OR", textAlignment: .center, fontSize: 18, textColor: .black, weight: .light,numOflines: 0,fitWidth: false)
    let emailBtn    = MADefaultBtn(btnTitle: "Sign in with Email", titleColor: .white, backgroundColor: #colorLiteral(red: 0.1647058824, green: 0.1647058824, blue: 0.7529411765, alpha: 1), raduis: 15)
    let label4      = MASeconderyLabel(text: "By signing in, you accept our", textAlignment: .left, fontSize: 25, textColor: .black, weight: .light,numOflines: 0,fitWidth: false)
    let termsBtn    = MADefaultBtn(btnTitle: "Terms and Conditions", titleColor: #colorLiteral(red: 0.1647058824, green: 0.1647058824, blue: 0.7529411765, alpha: 1), backgroundColor: .clear, raduis: 15)


    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.9254901961, green: 0.9450980392, blue: 0.9803921569, alpha: 1)
        
        configureLogo()
        configureLAbel0()
        configureLAbel1()
        configureMobileBtn()
        configureLabel2()
        configureSignUpBtn()
        configureLabel3()
        configureEmailBtn()
        configureLabel4()
        configureTermsBtn()
    }
    
    
    
    func configureLogo(){
        view.addSubview(imageView)
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 40),
            imageView.widthAnchor.constraint(equalToConstant: 150),
            imageView.heightAnchor.constraint(equalToConstant: 100),
            imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
    
    
    
    func configureLAbel0(){
        view.addSubview(label0)
        NSLayoutConstraint.activate([
            label0.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 50),
            label0.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label0.heightAnchor.constraint(equalToConstant: 30)
        ])
    }
    
    
    
    func configureLAbel1(){
        view.addSubview(label1)
        NSLayoutConstraint.activate([
            label1.topAnchor.constraint(equalTo: label0.bottomAnchor, constant: 10),
            label1.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label1.heightAnchor.constraint(equalToConstant: 30)
        ])
    }
    
    
    
    func configureMobileBtn(){
        view.addSubview(mobileBtn)
        mobileBtn.addTarget(self, action: #selector(presentMobileNumberSignInVC), for: .touchUpInside)
        NSLayoutConstraint.activate([
            mobileBtn.topAnchor.constraint(equalTo: view.centerYAnchor, constant: 15),
            mobileBtn.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            mobileBtn.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            mobileBtn.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    
    
    @objc func presentMobileNumberSignInVC(){
        let mobileSignInVC = MobileNumberSignInVC()
        mobileSignInVC.modalPresentationStyle = .overFullScreen
        present(mobileSignInVC, animated: true)
    }
    
    
    
    func configureLabel2(){
        view.addSubview(label2)
        NSLayoutConstraint.activate([
            label2.topAnchor.constraint(equalTo: mobileBtn.bottomAnchor, constant: 10),
            label2.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label2.heightAnchor.constraint(equalToConstant: 30)
        ])
    }
    
    
    
    func configureSignUpBtn(){
        view.addSubview(signUpBtn)
        signUpBtn.addTarget(self, action: #selector(pushSignUpVC), for: .touchUpInside)
        NSLayoutConstraint.activate([
            signUpBtn.topAnchor.constraint(equalTo: label2.bottomAnchor, constant: 10),
            signUpBtn.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            signUpBtn.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            signUpBtn.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    
    
    @objc func pushSignUpVC(){
        let signUpVC = SignUpVC()
        signUpVC.modalPresentationStyle = .overFullScreen
        present(signUpVC, animated: true, completion: nil)
    }
    
    
    
    func configureLabel3(){
        view.addSubview(label3)
        NSLayoutConstraint.activate([
            label3.topAnchor.constraint(equalTo: signUpBtn.bottomAnchor, constant: 10),
            label3.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label3.heightAnchor.constraint(equalToConstant: 30)
        ])
    }
    
    
    
    func configureEmailBtn(){
        view.addSubview(emailBtn)
        emailBtn.addTarget(self, action: #selector(pushEmailSignIInVC), for: .touchUpInside)
        NSLayoutConstraint.activate([
            emailBtn.topAnchor.constraint(equalTo: label3.bottomAnchor, constant: 10),
            emailBtn.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            emailBtn.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            emailBtn.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    
    
    @objc func pushEmailSignIInVC(){
        let emailVC = SignInWithEmailVC()
        emailVC.modalPresentationStyle = .overFullScreen
        present(emailVC, animated: true, completion: nil)
    }
    
    
    
    func configureLabel4(){
        view.addSubview(label4)
        NSLayoutConstraint.activate([
            label4.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            label4.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -10),
            label4.widthAnchor.constraint(equalToConstant: 200)
        ])
    }
    
    
    
    func configureTermsBtn(){
        view.addSubview(termsBtn)
        termsBtn.contentHorizontalAlignment = .left
        termsBtn.titleLabel?.font = UIFont.systemFont(ofSize: 14)
        NSLayoutConstraint.activate([
            termsBtn.leadingAnchor.constraint(equalTo: label4.trailingAnchor),
            termsBtn.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            termsBtn.heightAnchor.constraint(equalToConstant: 30),
            termsBtn.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -5)
        ])
    }
    
}
