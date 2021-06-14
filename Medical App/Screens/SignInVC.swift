//
//  SignInVC.swift
//  Medical App
//
//  Created by eslam on 5/29/21.
//

import UIKit
import FirebaseAuth



class SignInVC: UIViewController {

    let imageView   = UIImageView()
    let label0      = UILabel()
    let label1      = UILabel()
    let mobileBtn   = UIButton()
    let label2      = UILabel()
    let signUpBtn   = UIButton()
    let label3      = UILabel()
    let emailBtn    = UIButton()
    let label4      = UILabel()
    let termsBtn    = UIButton()


    
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
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "Logo")
        imageView.contentMode = .center
        
        
        NSLayoutConstraint.activate([
        
            imageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 40),
            imageView.widthAnchor.constraint(equalToConstant: 150),
            imageView.heightAnchor.constraint(equalToConstant: 100),
            imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        
        ])
        
        
    }
    
    
    
    func configureLAbel0(){
        
        view.addSubview(label0)
        label0.translatesAutoresizingMaskIntoConstraints = false
        label0.text = "Welcome"
        label0.textAlignment = .center
        label0.textColor = #colorLiteral(red: 0.09411764706, green: 0.07843137255, blue: 0.3803921569, alpha: 1)
        label0.font = UIFont.systemFont(ofSize: 25, weight: .semibold)
        
        NSLayoutConstraint.activate([
        
            label0.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 50),
            label0.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label0.heightAnchor.constraint(equalToConstant: 30),

        ])
        
    }

    
    
    
    func configureLAbel1(){
        
        view.addSubview(label1)
        label1.translatesAutoresizingMaskIntoConstraints = false
        label1.text = "Sign in to continue"
        label1.textAlignment = .center
        label1.textColor = .black
        label1.font = UIFont.systemFont(ofSize: 18, weight: .light)
        
        NSLayoutConstraint.activate([
        
            label1.topAnchor.constraint(equalTo: label0.bottomAnchor, constant: 10),
            label1.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label1.heightAnchor.constraint(equalToConstant: 30),

        ])
        
    }
    
    
    
    func configureMobileBtn(){
        
        view.addSubview(mobileBtn)
        mobileBtn.setTitle("Sign in with mobile number", for: .normal)
        mobileBtn.backgroundColor = #colorLiteral(red: 0.1647058824, green: 0.1647058824, blue: 0.7529411765, alpha: 1)
        mobileBtn.layer.cornerRadius = 15
        mobileBtn.translatesAutoresizingMaskIntoConstraints = false
        
        mobileBtn.addTarget(self, action: #selector(presentMobileNumberSignInVC), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
        
//            mobileBtn.topAnchor.constraint(equalTo: label1.bottomAnchor, constant: 20),
            mobileBtn.topAnchor.constraint(equalTo: view.centerYAnchor, constant: 15),
            mobileBtn.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            mobileBtn.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            mobileBtn.heightAnchor.constraint(equalToConstant: 50),

        
        ])
        
        
    }
    
    
    
    @objc func presentMobileNumberSignInVC(){
        
        let mobileSignInVC = MobileNumberSignInVC()
        mobileSignInVC.modalPresentationStyle = .overFullScreen
        present(mobileSignInVC, animated: true)
        
        
    }
    
    
    
    func configureLabel2(){
        
        view.addSubview(label2)
        label2.translatesAutoresizingMaskIntoConstraints = false
        label2.text = "OR"
        label2.textAlignment = .center
        label2.textColor = .black
        label2.font = UIFont.systemFont(ofSize: 18, weight: .light)
        
        NSLayoutConstraint.activate([
        
            label2.topAnchor.constraint(equalTo: mobileBtn.bottomAnchor, constant: 10),
            label2.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label2.heightAnchor.constraint(equalToConstant: 30),

        ])
        
    }
    
    
    
    
    
    
    func configureSignUpBtn(){
        
        view.addSubview(signUpBtn)
        signUpBtn.setTitle("Sign Up with Email", for: .normal)
        signUpBtn.backgroundColor = #colorLiteral(red: 0.2274509804, green: 0.3333333333, blue: 0.6235294118, alpha: 1)
        signUpBtn.layer.cornerRadius = 15
//        signUpBtn.setImage(UIImage(named: "icon_social-facebook"), for: .normal)
//        signUpBtn.imageEdgeInsets = UIEdgeInsets(top: 0, left: -15, bottom: 0, right: 0)
        signUpBtn.translatesAutoresizingMaskIntoConstraints = false
        
        signUpBtn.addTarget(self, action: #selector(pushSignUpVC), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
        
            signUpBtn.topAnchor.constraint(equalTo: label2.bottomAnchor, constant: 10),
            signUpBtn.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            signUpBtn.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            signUpBtn.heightAnchor.constraint(equalToConstant: 50),

        
        ])
        
        
    }
    
    
    
    @objc func pushSignUpVC(){
        
        let signUpVC = SignUpVC()
        signUpVC.modalPresentationStyle = .overFullScreen
        present(signUpVC, animated: true, completion: nil)
        
        
    }
    
    
    func configureLabel3(){
        
        view.addSubview(label3)
        label3.translatesAutoresizingMaskIntoConstraints = false
        label3.text = "OR"
        label3.textAlignment = .center
        label3.textColor = .black
        label3.font = UIFont.systemFont(ofSize: 18, weight: .light)
        
        NSLayoutConstraint.activate([
        
            label3.topAnchor.constraint(equalTo: signUpBtn.bottomAnchor, constant: 10),
            label3.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label3.heightAnchor.constraint(equalToConstant: 30),

        ])
        
    }
    
    
    
    
    
    func configureEmailBtn(){
        
        view.addSubview(emailBtn)
        emailBtn.setTitle("Sign in with Email", for: .normal)
        emailBtn.backgroundColor = #colorLiteral(red: 0.2274509804, green: 0.3333333333, blue: 0.6235294118, alpha: 1)
        emailBtn.layer.cornerRadius = 15
        emailBtn.translatesAutoresizingMaskIntoConstraints = false
        
        emailBtn.addTarget(self, action: #selector(pushEmailSignIInVC), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
        
            emailBtn.topAnchor.constraint(equalTo: label3.bottomAnchor, constant: 10),
            emailBtn.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            emailBtn.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            emailBtn.heightAnchor.constraint(equalToConstant: 50),

        
        ])
        
        
    }
    
    
    @objc func pushEmailSignIInVC(){
        
        let emailVC = SignInWithEmailVC()
        
        emailVC.modalPresentationStyle = .overFullScreen
        present(emailVC, animated: true, completion: nil)
        
    }
    
    
    

    func configureLabel4(){
        
        view.addSubview(label4)
        
        label4.translatesAutoresizingMaskIntoConstraints = false
        label4.text = "By signing in, you accept our"
        label4.textAlignment = .left
        label4.textColor = .black
        label4.font = UIFont.systemFont(ofSize: 25, weight: .light)
        label4.adjustsFontSizeToFitWidth = true
        
        
        NSLayoutConstraint.activate([
        
            label4.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            label4.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -10),
            label4.widthAnchor.constraint(equalToConstant: 200),

        ])
        
    }
    
    func configureTermsBtn(){
        
        view.addSubview(termsBtn)
        termsBtn.setTitle("Terms and Conditions", for: .normal)
        termsBtn.setTitleColor(#colorLiteral(red: 0.1647058824, green: 0.1647058824, blue: 0.7529411765, alpha: 1), for: .normal)
        termsBtn.titleLabel?.font = UIFont.systemFont(ofSize: 14)
        termsBtn.contentHorizontalAlignment = .left
        termsBtn.translatesAutoresizingMaskIntoConstraints = false
        
        
        
        NSLayoutConstraint.activate([
        
//            termsBtn.centerYAnchor.constraint(equalTo: label3.centerYAnchor),
            termsBtn.leadingAnchor.constraint(equalTo: label4.trailingAnchor),
            termsBtn.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            termsBtn.heightAnchor.constraint(equalToConstant: 30),
            termsBtn.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -5),

            

        
        ])
        
        
    }
    

    
    
    
    
    
    
    
    
    
}
