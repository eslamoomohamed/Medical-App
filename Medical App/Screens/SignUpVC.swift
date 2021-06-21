//
//  SignUpVC.swift
//  Medical App
//
//  Created by eslam on 6/14/21.
//

import UIKit
import Firebase

class SignUpVC: UIViewController {

    
    let backBtn            = MAImageBtn(buttonTybe: "backIcon")
    let label0             = MASeconderyLabel(text: "Sign Up ", textAlignment: .left, fontSize: 18, textColor: .black, weight: .semibold,numOflines: 0,fitWidth: false)
    let emailLabel         = MASeconderyLabel(text: "Your email", textAlignment: .left, fontSize: 20, textColor: #colorLiteral(red: 0.09411764706, green: 0.07843137255, blue: 0.3803921569, alpha: 1) , weight: .semibold,numOflines: 0,fitWidth: false)
    let customView0        = MARoundedView(cornerRaduis: 10, with: false, backgroundColor: .white)
    let emailTextField     = MATextField(placeHolder: "Enter Your email ", textAlignment: .left, keyboardType: .emailAddress, isSecureTextEntry: false)
    let clearBtn0          = MAImageBtn(buttonTybe: "clearBtn")
    let passwordLabel      = MASeconderyLabel(text: "Your Password", textAlignment: .left, fontSize: 20, textColor: #colorLiteral(red: 0.09411764706, green: 0.07843137255, blue: 0.3803921569, alpha: 1) , weight: .semibold,numOflines: 0,fitWidth: false)
    let customView1        = MARoundedView(cornerRaduis: 10, with: false, backgroundColor: .white)
    let passwordTextField  = MATextField(placeHolder: "Enter Your password ", textAlignment: .left, keyboardType: .emailAddress, isSecureTextEntry: true)
    let clearBtn1          = MAImageBtn(buttonTybe: "clearBtn")
    let mobileNumLabel     = MASeconderyLabel(text: "Your Mobile", textAlignment: .left, fontSize: 20, textColor: #colorLiteral(red: 0.09411764706, green: 0.07843137255, blue: 0.3803921569, alpha: 1) , weight: .semibold,numOflines: 0,fitWidth: false)
    let customView2        = MARoundedView(cornerRaduis: 10, with: false, backgroundColor: .white)
    let mobileNumTextField = MATextField(placeHolder: "Enter Your Mobile ", textAlignment: .left, keyboardType: .numberPad, isSecureTextEntry: false)
    let clearBtn2          = MAImageBtn(buttonTybe: "clearBtn")
    let continueBtn        = MADefaultBtn(btnTitle: "Continue", titleColor: .white, backgroundColor: #colorLiteral(red: 0.1647058824, green: 0.1647058824, blue: 0.7529411765, alpha: 1), raduis: 15)


    
    var isUserEmailEntered: Bool {return !emailTextField.text!.isEmpty}
    var isPasswordEntered: Bool {return !passwordTextField.text!.isEmpty}
    var alertMessage: String = "Please enter your email"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.9254901961, green: 0.9450980392, blue: 0.9803921569, alpha: 1)
        
        configureBackBtn()
        configureLAbel0()
        configureEmailLabel()
        configureCustomView0()
        configureClearBtn0()
        configureTF0()
        configurePasswordLabel()
        configureCustomView1()
        configureClearBtn1()
        configureTF1()
        configureMobileNumLabel()
        configureCustomView2()
        configureClearBtn2()
        configureTF2()
        configureContibueBtn()
        createTapGestureRecognizer()
    }
    
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        emailTextField.becomeFirstResponder()
    }
    
    
    
    func createTapGestureRecognizer(){
        let tap = UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing))
        view.addGestureRecognizer(tap)
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
    
    
    
    func configureLAbel0(){
        view.addSubview(label0)
        NSLayoutConstraint.activate([
            label0.topAnchor.constraint(equalTo: backBtn.bottomAnchor, constant: 20),
            label0.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            label0.heightAnchor.constraint(equalToConstant: 30),
            label0.widthAnchor.constraint(equalToConstant: 150)
        ])
    }
    
    
    
    func configureEmailLabel(){
        view.addSubview(emailLabel)
        NSLayoutConstraint.activate([
            emailLabel.topAnchor.constraint(equalTo: label0.bottomAnchor, constant: 60),
            emailLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            emailLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            emailLabel.heightAnchor.constraint(equalToConstant: 30)
        ])
    }
    
    
    
    func configureCustomView0(){
        view.addSubview(customView0)
        NSLayoutConstraint.activate([
            customView0.topAnchor.constraint(equalTo: emailLabel.bottomAnchor, constant: 10),
            customView0.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            customView0.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            customView0.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    
    
    func configureClearBtn0(){
        customView0.addSubview(clearBtn0)
        clearBtn0.addTarget(self, action: #selector(TFShouldClear), for: .touchUpInside)
        clearBtn0.isHidden = true
        NSLayoutConstraint.activate([
            clearBtn0.topAnchor.constraint(equalTo: customView0.topAnchor),
            clearBtn0.widthAnchor.constraint(equalToConstant: 40),
            clearBtn0.trailingAnchor.constraint(equalTo: customView0.trailingAnchor, constant: -5),
            clearBtn0.bottomAnchor.constraint(equalTo: customView0.bottomAnchor)
        ])
    }
    
    
    
    func configureTF0(){
        customView0.addSubview(emailTextField)
        emailTextField.addTarget(self, action: #selector(showClearBtn), for: .editingChanged)
        NSLayoutConstraint.activate([
            emailTextField.topAnchor.constraint(equalTo: customView0.topAnchor, constant: 10),
            emailTextField.leadingAnchor.constraint(equalTo: customView0.leadingAnchor, constant: 20),
            emailTextField.trailingAnchor.constraint(equalTo: clearBtn0.leadingAnchor, constant: -30),
            emailTextField.bottomAnchor.constraint(equalTo: customView0.bottomAnchor, constant: -10)
        ])
    }
    
    
    
    func configurePasswordLabel(){
        view.addSubview(passwordLabel)
        NSLayoutConstraint.activate([
            passwordLabel.topAnchor.constraint(equalTo: customView0.bottomAnchor, constant: 10),
            passwordLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            passwordLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            passwordLabel.heightAnchor.constraint(equalToConstant: 30)
        ])
    }
    
    
    
    func configureCustomView1(){
        view.addSubview(customView1)
        NSLayoutConstraint.activate([
            customView1.topAnchor.constraint(equalTo: passwordLabel.bottomAnchor, constant: 10),
            customView1.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            customView1.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            customView1.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    
    
    func configureClearBtn1(){
        customView1.addSubview(clearBtn1)
        clearBtn1.addTarget(self, action: #selector(TFShouldClear), for: .touchUpInside)
        clearBtn1.isHidden  = true
        NSLayoutConstraint.activate([
            clearBtn1.topAnchor.constraint(equalTo: customView1.topAnchor),
            clearBtn1.widthAnchor.constraint(equalToConstant: 40),
            clearBtn1.trailingAnchor.constraint(equalTo: customView1.trailingAnchor, constant: -5),
            clearBtn1.bottomAnchor.constraint(equalTo: customView1.bottomAnchor)
        ])
    }
    
    
    
    func configureTF1(){
        customView1.addSubview(passwordTextField)
        passwordTextField.addTarget(self, action: #selector(showClearBtn(_:)), for: .editingChanged)
        NSLayoutConstraint.activate([
            passwordTextField.topAnchor.constraint(equalTo: customView1.topAnchor, constant: 10),
            passwordTextField.leadingAnchor.constraint(equalTo: customView1.leadingAnchor, constant: 20),
            passwordTextField.trailingAnchor.constraint(equalTo: clearBtn1.leadingAnchor, constant: -30),
            passwordTextField.bottomAnchor.constraint(equalTo: customView1.bottomAnchor, constant: -10)
        ])
    }
    
    
    
    func configureMobileNumLabel(){
        view.addSubview(mobileNumLabel)
        NSLayoutConstraint.activate([
            mobileNumLabel.topAnchor.constraint(equalTo: customView1.bottomAnchor, constant: 10),
            mobileNumLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            mobileNumLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            mobileNumLabel.heightAnchor.constraint(equalToConstant: 30)
        ])
    }
    
    
    
    func configureCustomView2(){
        view.addSubview(customView2)
        NSLayoutConstraint.activate([
            customView2.topAnchor.constraint(equalTo: mobileNumLabel.bottomAnchor, constant: 10),
            customView2.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            customView2.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            customView2.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    
    
    func configureClearBtn2(){
        customView2.addSubview(clearBtn2)
        clearBtn2.addTarget(self, action: #selector(TFShouldClear), for: .touchUpInside)
        clearBtn2.isHidden = true
        NSLayoutConstraint.activate([
            clearBtn2.topAnchor.constraint(equalTo: customView2.topAnchor),
            clearBtn2.widthAnchor.constraint(equalToConstant: 40),
            clearBtn2.trailingAnchor.constraint(equalTo: customView2.trailingAnchor, constant: -5),
            clearBtn2.bottomAnchor.constraint(equalTo: customView2.bottomAnchor)
        ])
    }

    
        
    func configureTF2(){
        
        customView2.addSubview(mobileNumTextField)
        mobileNumTextField.delegate = self
        mobileNumTextField.addTarget(self, action: #selector(showClearBtn(_:)), for: .editingChanged)
        NSLayoutConstraint.activate([
            mobileNumTextField.topAnchor.constraint(equalTo: customView2.topAnchor, constant: 10),
            mobileNumTextField.leadingAnchor.constraint(equalTo: customView2.leadingAnchor, constant: 20),
            mobileNumTextField.trailingAnchor.constraint(equalTo: clearBtn2.leadingAnchor, constant: -30),
            mobileNumTextField.bottomAnchor.constraint(equalTo: customView2.bottomAnchor, constant: -10)
        ])
    }
    
    
    @objc func TFShouldClear(_ clearBtn: UIButton) {
        switch clearBtn {
        case clearBtn0:
            emailTextField.text = nil
            emailTextField.becomeFirstResponder()
            clearBtn0.isHidden = true
        case clearBtn1:
            passwordTextField.text = nil
            passwordTextField.becomeFirstResponder()
            clearBtn1.isHidden = true
        default:
            mobileNumTextField.text = nil
            mobileNumTextField.becomeFirstResponder()
            clearBtn2.isHidden = true
        }
    }
    
    
    
    @objc func showClearBtn(_ textField: UITextField){
        switch textField {
        case emailTextField:
            if emailTextField.text!.count >= 1 {
                DispatchQueue.main.async {
                    self.clearBtn0.isHidden = false
                }
            }else{
                DispatchQueue.main.async {
                    self.clearBtn0.isHidden = true
                }
            }
        case passwordTextField:
            if passwordTextField.text!.count >= 1 {
                DispatchQueue.main.async {
                    self.clearBtn1.isHidden = false
                }
            }else{
                DispatchQueue.main.async {
                    self.clearBtn1.isHidden = true
                }
            }
        default:
            if mobileNumLabel.text!.count >= 1 {
                let length = textField.text
                if length?.count == 11{
                    textField.resignFirstResponder()
                }
                DispatchQueue.main.async {
                    self.clearBtn2.isHidden = false
                }
            }else{
                DispatchQueue.main.async {
                    self.clearBtn2.isHidden = true
                }
            }
        }
    }
    
    
    
    func configureContibueBtn(){
        view.addSubview(continueBtn)
        continueBtn.addTarget(self, action: #selector(createUer), for: .touchUpInside)
        NSLayoutConstraint.activate([
            continueBtn.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -50),
            continueBtn.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            continueBtn.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            continueBtn.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    
    
    @objc func createUer(){
        guard let email = emailTextField.text?.lowercased() else{
            return
        }
        guard let password = passwordTextField.text else{
            return
        }
        guard isUserEmailEntered else{
            presentMAAlertOnMainThread(title: "Empty email", bodyMessage: "Please enter your email to get login", btnTitle: "OK!")
            return
        }
        guard isPasswordEntered else{
            presentMAAlertOnMainThread(title: "Empty Password", bodyMessage: "Please enter your Password to get login", btnTitle: "OK!")
            return
        }
        showLodingView()
        Auth.auth().createUser(withEmail: email, password: password, completion: { (result, error) -> Void in
            self.dismissActivityIndicator()
            if (error == nil) {
                print("Account created :)")
                self.presentMAAlertOnMainThread(title: "Account created :)", bodyMessage: "Now you can go and login", btnTitle: "OK!")
            }else{
                print(error?.localizedDescription as Any)
                self.presentMAAlertOnMainThread(title: "Account not created :)", bodyMessage: error!.localizedDescription, btnTitle: "OK!")
            }
        })
    }
    
}




extension SignUpVC: UITextFieldDelegate{
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let maxLength               = 11
        let currentString: NSString = textField.text! as NSString
        let newString: NSString     = currentString.replacingCharacters(in: range, with: string) as NSString
        return newString.length <= maxLength
    }
}
