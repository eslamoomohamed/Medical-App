//
//  SignInWithEmailVC.swift
//  Medical App
//
//  Created by eslam on 6/7/21.
//

import UIKit
import FirebaseAuth

class SignInWithEmailVC: UIViewController {

    
    let backBtn           = UIButton()
    let label0            = UILabel()
    let emailLabel        = UILabel()
    let customView0       = UIView()
    let emailTextField    = MATextField()
    let clearBtn0         = UIButton()
    let passwordLabel      = UILabel()
    let customView1       = UIView()
    let passwordTextField = MATextField()
    let clearBtn1         = UIButton()
    let continueBtn       = UIButton()


    
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
        backBtn.setImage(UIImage(named: "backIcon"), for: .normal)
        backBtn.translatesAutoresizingMaskIntoConstraints = false
        backBtn.addTarget(self, action: #selector(dismissVC), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
        
            backBtn.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            backBtn.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            backBtn.widthAnchor.constraint(equalToConstant: 20),
            backBtn.heightAnchor.constraint(equalToConstant: 20)

        
        
        ])
        
        
        
        
    }
    
    
    @objc func dismissVC(){
        
        dismiss(animated: true, completion: nil)
        
    }
    
    
    

    
    
    
    
    func configureLAbel0(){
        
        view.addSubview(label0)
        label0.translatesAutoresizingMaskIntoConstraints = false
        label0.text = "Sign In "
        label0.textAlignment = .left
        label0.textColor = .black
        label0.lineBreakMode = .byTruncatingTail
        label0.font = UIFont.systemFont(ofSize: 18, weight: .semibold)
        
        NSLayoutConstraint.activate([
        
            label0.topAnchor.constraint(equalTo: backBtn.bottomAnchor, constant: 20),
            label0.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            label0.heightAnchor.constraint(equalToConstant: 30),
            label0.widthAnchor.constraint(equalToConstant: 150)

        ])
        
    }
    
    
    
    
    
    func configureEmailLabel(){
        
        view.addSubview(emailLabel)
        emailLabel.text = "Your email"
        emailLabel.translatesAutoresizingMaskIntoConstraints = false
        emailLabel.textAlignment = .left
        emailLabel.textColor = #colorLiteral(red: 0.09411764706, green: 0.07843137255, blue: 0.3803921569, alpha: 1)
        emailLabel.font = UIFont.systemFont(ofSize: 20, weight: .semibold)
        
        NSLayoutConstraint.activate([
        
            emailLabel.topAnchor.constraint(equalTo: label0.bottomAnchor, constant: 60),
            emailLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            emailLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            emailLabel.heightAnchor.constraint(equalToConstant: 30),
            
        
        ])
        
        
    }
    
    
    
    
    func configureCustomView0(){
        
        view.addSubview(customView0)
        
        customView0.translatesAutoresizingMaskIntoConstraints = false
        customView0.layer.maskedCorners = [.layerMaxXMaxYCorner, .layerMaxXMinYCorner, .layerMinXMaxYCorner, .layerMinXMinYCorner]
        customView0.layer.cornerRadius  = 10
        customView0.backgroundColor     = .white
        
        NSLayoutConstraint.activate([
        
            customView0.topAnchor.constraint(equalTo: emailLabel.bottomAnchor, constant: 10),
            customView0.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            customView0.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            customView0.heightAnchor.constraint(equalToConstant: 50),
        ])

        
        
    }
    
    
    
    
    
    func configureClearBtn0(){
        
        customView0.addSubview(clearBtn0)
        clearBtn0.setImage(UIImage(named: "clearBtn"), for: .normal)
        clearBtn0.translatesAutoresizingMaskIntoConstraints = false
        
        clearBtn0.addTarget(self, action: #selector(TF0ShouldClear), for: .touchUpInside)
        
        clearBtn0.isHidden = true
        
        NSLayoutConstraint.activate([
        
            clearBtn0.topAnchor.constraint(equalTo: customView0.topAnchor),
            clearBtn0.widthAnchor.constraint(equalToConstant: 40),
            clearBtn0.trailingAnchor.constraint(equalTo: customView0.trailingAnchor, constant: -5),
            clearBtn0.bottomAnchor.constraint(equalTo: customView0.bottomAnchor),

        
        ])
        
        
    }
    
    
    
    @objc func TF0ShouldClear() -> Bool {
        emailTextField.text = nil
        emailTextField.becomeFirstResponder()
        clearBtn0.isHidden = true
        return true
    }
    
    
    
    
    
    

    func configureTF0(){
        
        customView0.addSubview(emailTextField)
        emailTextField.placeholder = "Enter Your email "

        emailTextField.textAlignment = .left
        emailTextField.keyboardType = .emailAddress
        emailTextField.autocorrectionType = .no

        
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
        passwordLabel.text = "Your Password"
        passwordLabel.translatesAutoresizingMaskIntoConstraints = false
        passwordLabel.textAlignment = .left
        passwordLabel.textColor = #colorLiteral(red: 0.09411764706, green: 0.07843137255, blue: 0.3803921569, alpha: 1)
        passwordLabel.font = UIFont.systemFont(ofSize: 20, weight: .semibold)
        
        NSLayoutConstraint.activate([
        
            passwordLabel.topAnchor.constraint(equalTo: customView0.bottomAnchor, constant: 10),
            passwordLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            passwordLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            passwordLabel.heightAnchor.constraint(equalToConstant: 30),
            
        
        ])
        
        
    }
    
    
    func configureCustomView1(){
        
        view.addSubview(customView1)
        
        customView1.translatesAutoresizingMaskIntoConstraints = false
        customView1.layer.maskedCorners = [.layerMaxXMaxYCorner, .layerMaxXMinYCorner, .layerMinXMaxYCorner, .layerMinXMinYCorner]
        customView1.layer.cornerRadius  = 10
        customView1.backgroundColor     = .white
        
        NSLayoutConstraint.activate([
        
            customView1.topAnchor.constraint(equalTo: passwordLabel.bottomAnchor, constant: 10),
            customView1.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            customView1.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            customView1.heightAnchor.constraint(equalToConstant: 50),
        ])

        
        
    }
    
    
    
    
    
    func configureClearBtn1(){
        
        customView1.addSubview(clearBtn1)
        clearBtn1.setImage(UIImage(named: "clearBtn"), for: .normal)
        clearBtn1.translatesAutoresizingMaskIntoConstraints = false
        
        clearBtn1.addTarget(self, action: #selector(TF1ShouldClear), for: .touchUpInside)
        
        clearBtn1.isHidden  = true
        
        NSLayoutConstraint.activate([
        
            clearBtn1.topAnchor.constraint(equalTo: customView1.topAnchor),
            clearBtn1.widthAnchor.constraint(equalToConstant: 40),
            clearBtn1.trailingAnchor.constraint(equalTo: customView1.trailingAnchor, constant: -5),
            clearBtn1.bottomAnchor.constraint(equalTo: customView1.bottomAnchor),

        
        ])
        
        
    }
    
    
    
    
    
    @objc func TF1ShouldClear() -> Bool {
        passwordTextField.text = nil
        passwordTextField.becomeFirstResponder()
        clearBtn1.isHidden = true
        return true
    }

    
    
    
    
    

    func configureTF1(){
        
        customView1.addSubview(passwordTextField)
        passwordTextField.placeholder = "Enter Your password "
//        textField.contentHorizontalAlignment = .left
        passwordTextField.textAlignment = .left
        passwordTextField.keyboardType = .emailAddress
        passwordTextField.isSecureTextEntry = true
        passwordTextField.autocorrectionType = .no
        
        passwordTextField.addTarget(self, action: #selector(showClearBtn(_:)), for: .editingChanged)
        
        NSLayoutConstraint.activate([
        
            passwordTextField.topAnchor.constraint(equalTo: customView1.topAnchor, constant: 10),
            passwordTextField.leadingAnchor.constraint(equalTo: customView1.leadingAnchor, constant: 20),
            passwordTextField.trailingAnchor.constraint(equalTo: clearBtn1.leadingAnchor, constant: -30),
            passwordTextField.bottomAnchor.constraint(equalTo: customView1.bottomAnchor, constant: -10)
        ])
        
        
        
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
        
            break
        }


    }
    
    
    
    func configureContibueBtn(){
        
        view.addSubview(continueBtn)
        continueBtn.setTitle("Continue", for: .normal)
        continueBtn.backgroundColor = #colorLiteral(red: 0.1647058824, green: 0.1647058824, blue: 0.7529411765, alpha: 1)
        continueBtn.layer.cornerRadius = 15
        continueBtn.translatesAutoresizingMaskIntoConstraints = false
        
        continueBtn.addTarget(self, action: #selector(login), for: .touchUpInside)
        
        
        NSLayoutConstraint.activate([
        
//            mobileBtn.topAnchor.constraint(equalTo: label1.bottomAnchor, constant: 20),
            continueBtn.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -50),
            continueBtn.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            continueBtn.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            continueBtn.heightAnchor.constraint(equalToConstant: 50),

        
        ])
        
        
    }

    
    
    
    
    @objc func login(){
        
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
        
            
            Auth.auth().signIn(withEmail: email, password: password) { (result, error) in
                self.dismissActivityIndicator()
                
                guard error == nil else{
                    print(error?.localizedDescription as Any)
                    self.presentMAAlertOnMainThread(title: "Something went wrong", bodyMessage: "Please check your email and Password to get login", btnTitle: "OK!")

                    
                    return
                }
                
                
                
                let user = Auth.auth().currentUser
                user?.getIDToken(completion: { (token, error) in
                    
                    if let error = error {
                        
                        print("errrrrror  \(error)")
                        return
                    }
                    
                    guard let token = token else{return}
                    UserDataService.saveApiToken(token: token)
                    
                    let dashboardVC = UINavigationController(rootViewController: DashboardVC())
                    
                    dashboardVC.modalPresentationStyle = .fullScreen
                    self.present(dashboardVC, animated: true, completion: nil)
                    
                })

            
            
            }
            
            
        
        
        
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
}
