//
//  MobileNumberSignINVC.swift
//  Medical App
//
//  Created by eslam on 5/30/21.
//

import UIKit
import FirebaseAuth


class MobileNumberSignInVC: UIViewController {

    
    let backBtn     = MAImageBtn(buttonTybe: "backIcon")
    let imageView   = MADefaultImageView(with: "Logo")
    let label0      = MASeconderyLabel(text: "Mobile Number", textAlignment: .center, fontSize: 25, textColor: #colorLiteral(red: 0.09411764706, green: 0.07843137255, blue: 0.3803921569, alpha: 1) , weight: .semibold,numOflines: 0,fitWidth: false)
    let label1      = MASeconderyLabel(text: "The code will be sent to your mobile number", textAlignment: .center, fontSize: 18, textColor: .black, weight: .light,numOflines: 0,fitWidth: false)
    let customView  = MARoundedView(cornerRaduis: 10, with: false, backgroundColor: .white)
    let textField   = MATextField(placeHolder: "Mobile Number", textAlignment: .center, keyboardType: .numberPad, isSecureTextEntry: false)
    let clearBtn    = MAImageBtn(buttonTybe: "clearBtn")
    let continueBtn = MADefaultBtn(btnTitle: "Continue", titleColor: .white, backgroundColor: #colorLiteral(red: 0.1647058824, green: 0.1647058824, blue: 0.7529411765, alpha: 1), raduis: 15)
    
    var isMobileNumberEntered: Bool{
        return !textField.text!.isEmpty
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.9254901961, green: 0.9450980392, blue: 0.9803921569, alpha: 1)

        configureBackBtn()
        configureLogo()
        configureLAbel0()
        configureLAbel1()
        configureCustomView()
        configureClearBtn()
        configureTF()
        configureContibueBtn()
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
    
    
    
    @objc func dismissVC(){ dismiss(animated: true, completion: nil) }
    
    
    
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
            label1.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 5),
            label1.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -5),
            label1.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label1.heightAnchor.constraint(equalToConstant: 30)
        ])
    }
    
    
    
    func configureCustomView(){
        view.addSubview(customView)
        NSLayoutConstraint.activate([
            customView.topAnchor.constraint(equalTo: view.centerYAnchor, constant: 20),
            customView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            customView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            customView.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    
    
    func configureClearBtn(){
        customView.addSubview(clearBtn)
        clearBtn.addTarget(self, action: #selector(TFShouldClear), for: .touchUpInside)
        NSLayoutConstraint.activate([
            clearBtn.topAnchor.constraint(equalTo: customView.topAnchor),
            clearBtn.widthAnchor.constraint(equalToConstant: 40),
            clearBtn.trailingAnchor.constraint(equalTo: customView.trailingAnchor, constant: -5),
            clearBtn.bottomAnchor.constraint(equalTo: customView.bottomAnchor)
        ])
    }
    
    
    
    @objc func TFShouldClear() -> Bool {
        textField.text = nil
        textField.becomeFirstResponder()
        return true
    }
    
    
    
    func configureTF(){
        customView.addSubview(textField)
        textField.delegate = self
        textField.addTarget(self, action: #selector(didFinishTyping), for: .editingChanged)
        NSLayoutConstraint.activate([
            textField.topAnchor.constraint(equalTo: customView.topAnchor, constant: 10),
            textField.leadingAnchor.constraint(equalTo: customView.leadingAnchor, constant: 50),
            textField.trailingAnchor.constraint(equalTo: clearBtn.leadingAnchor, constant: -30),
            textField.bottomAnchor.constraint(equalTo: customView.bottomAnchor, constant: -10)
        ])
    }
    
    
    
    @objc func didFinishTyping(textField: UITextField){
        let length = textField.text
        if length?.count == 11{
            textField.resignFirstResponder()
            return
        }else{
            textField.becomeFirstResponder()
            return
        }
    }
    
    
    
    func configureContibueBtn(){
        view.addSubview(continueBtn)
        continueBtn.addTarget(self, action: #selector(pushActivationVC), for: .touchUpInside)
        NSLayoutConstraint.activate([
            continueBtn.topAnchor.constraint(equalTo: customView.bottomAnchor, constant: 20),
            continueBtn.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            continueBtn.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            continueBtn.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    
    
    @objc func pushActivationVC(){
        guard let _ = textField.text else {
            return
        }
        guard isMobileNumberEntered else {
            presentMAAlertOnMainThread(title: "Enter Your phone number", bodyMessage: "Empty phone number ", btnTitle: "ok!")
            return
        }
//        showLodingView()
        let verficaionVC = MobileNumberVerificationVC()
        present(verficaionVC, animated: true, completion: nil)
    }
}


extension MobileNumberSignInVC: UITextFieldDelegate{
    
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let maxLength = 11
        let currentString: NSString = textField.text! as NSString
        let newString: NSString = currentString.replacingCharacters(in: range, with: string) as NSString
        return newString.length <= maxLength
        
    }
    
}
