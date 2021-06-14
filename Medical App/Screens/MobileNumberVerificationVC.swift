//
//  MobileNumberVerificationVC.swift
//  Medical App
//
//  Created by eslam on 5/30/21.
//

import UIKit

class MobileNumberVerificationVC: UIViewController {

    
    
    let imageView      = UIImageView()
    let label0         = UILabel()
    let label1         = UILabel()
    let customView     = UIView()
    let clearBtn       = UIButton()
    let stackView      = UIStackView()
    let TF1            = MATextField()
    let TF2            = MATextField()
    let TF3            = MATextField()
    let TF4            = MATextField()
    let stackView1     = UIStackView()
    let TFView1        = MALineView()
    let TFView2        = MALineView()
    let TFView3        = MALineView()
    let TFView4        = MALineView()
    let continueBtn    = UIButton()
    let resentCodeBtn  = UIButton()
    let changeNumBtn   = UIButton()
    

    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        view.backgroundColor = #colorLiteral(red: 0.9254901961, green: 0.9450980392, blue: 0.9803921569, alpha: 1)

        configureLogo()
        configureLAbel0()
        configureLAbel1()
        configureCustomView()
        configureClearBtn()
        configureStackView()
        configureStackVie1()
        configureContibueBtn()
        configureResentCodeBtn()
        configureChangeNumBtn()
    }
    

    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        TF1.becomeFirstResponder()
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
        label0.text = "Verification"
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
        label1.text = "Insert your code here:"
        label1.textAlignment = .center
        label1.textColor = .black
        label1.font = UIFont.systemFont(ofSize: 18, weight: .light)
        
        NSLayoutConstraint.activate([
        
            label1.topAnchor.constraint(equalTo: label0.bottomAnchor, constant: 10),
            label1.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label1.heightAnchor.constraint(equalToConstant: 30),

        ])
        
    }
    
    
    
    
    func configureCustomView(){
        
        view.addSubview(customView)
        
        customView.translatesAutoresizingMaskIntoConstraints = false
        customView.layer.maskedCorners = [.layerMaxXMaxYCorner, .layerMaxXMinYCorner, .layerMinXMaxYCorner, .layerMinXMinYCorner]
        customView.layer.cornerRadius  = 10
        customView.backgroundColor     = .white
        
        NSLayoutConstraint.activate([
        
            customView.topAnchor.constraint(equalTo: view.centerYAnchor, constant: 20),
            customView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            customView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            customView.heightAnchor.constraint(equalToConstant: 50),
        ])

        
        
    }
    
    
    
    
    func configureClearBtn(){
        
        customView.addSubview(clearBtn)
        clearBtn.setImage(UIImage(named: "clearBtn"), for: .normal)
        clearBtn.translatesAutoresizingMaskIntoConstraints = false
        
        clearBtn.addTarget(self, action: #selector(TFShouldClear), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
        
            clearBtn.topAnchor.constraint(equalTo: customView.topAnchor),
            clearBtn.widthAnchor.constraint(equalToConstant: 40),
            clearBtn.trailingAnchor.constraint(equalTo: customView.trailingAnchor, constant: -5),
            clearBtn.bottomAnchor.constraint(equalTo: customView.bottomAnchor),

        
        ])
        
        
    }
    
    
    @objc func TFShouldClear() -> Bool {
        TF1.text = nil
        TF2.text = nil
        TF3.text = nil
        TF4.text = nil
        TF1.becomeFirstResponder()
        return true
    }
    
    
    func configureStackView(){
        
        customView.addSubview(stackView)
        
        stackView.addArrangedSubview(TF1)
        stackView.addArrangedSubview(TF2)
        stackView.addArrangedSubview(TF3)
        stackView.addArrangedSubview(TF4)
        
        stackView.axis                                      = .horizontal
        stackView.alignment                                 = .fill
        stackView.distribution                              = .fillEqually
        stackView.spacing                                   = 10
        
        TF1.delegate = self
        TF2.delegate = self
        TF3.delegate = self
        TF4.delegate = self

        
        TF1.addTarget(self, action: #selector(self.textdDidChange(textField:)), for: .editingChanged)
        TF2.addTarget(self, action: #selector(self.textdDidChange(textField:)), for: .editingChanged)
        TF3.addTarget(self, action: #selector(self.textdDidChange(textField:)), for: .editingChanged)
        TF4.addTarget(self, action: #selector(self.textdDidChange(textField:)), for: .editingChanged)

        stackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
        
            stackView.topAnchor.constraint(equalTo: customView.topAnchor, constant: 10),
            stackView.leadingAnchor.constraint(equalTo: customView.leadingAnchor, constant: 50),
            stackView.trailingAnchor.constraint(equalTo: clearBtn.leadingAnchor, constant: -30),
            stackView.bottomAnchor.constraint(equalTo: customView.bottomAnchor, constant: -10),

        ])
        
    }
    
    
    @objc func textdDidChange(textField: UITextField) {
        let text = textField.text
        
        if text?.count == 1{
            
            switch textField {
            case TF1:
                TF2.becomeFirstResponder()
                break
            case TF2:
                TF3.becomeFirstResponder()
                break
            case TF3:
                TF4.becomeFirstResponder()
                break
            case TF4:
                TF4.resignFirstResponder()
                break
                
            default:
                break
            }
            
            
            
        }
    }
    
    
    
    
    
    func configureStackVie1(){
        
        customView.addSubview(stackView1)
        
        stackView1.addArrangedSubview(TFView1)
        stackView1.addArrangedSubview(TFView2)
        stackView1.addArrangedSubview(TFView3)
        stackView1.addArrangedSubview(TFView4)
        
        
        stackView1.axis                                      = .horizontal
        stackView1.alignment                                 = .fill
        stackView1.distribution                              = .fillEqually
        stackView1.spacing                                   = 10
        

        stackView1.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
        
            stackView1.topAnchor.constraint(equalTo: stackView.bottomAnchor),
            stackView1.leadingAnchor.constraint(equalTo: customView.leadingAnchor, constant: 50),
            stackView1.trailingAnchor.constraint(equalTo: clearBtn.leadingAnchor, constant: -30),
            stackView1.bottomAnchor.constraint(equalTo: customView.bottomAnchor, constant: -9),

        ])
        
    }
    

    
    

    
    
    
    func configureContibueBtn(){
        
        view.addSubview(continueBtn)
        continueBtn.setTitle("Continue", for: .normal)
        continueBtn.backgroundColor = #colorLiteral(red: 0.1647058824, green: 0.1647058824, blue: 0.7529411765, alpha: 1)
        continueBtn.layer.cornerRadius = 15
        continueBtn.translatesAutoresizingMaskIntoConstraints = false
        
        
        
        NSLayoutConstraint.activate([
        
//            mobileBtn.topAnchor.constraint(equalTo: label1.bottomAnchor, constant: 20),
            continueBtn.topAnchor.constraint(equalTo: customView.bottomAnchor, constant: 20),
            continueBtn.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            continueBtn.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            continueBtn.heightAnchor.constraint(equalToConstant: 50),

        
        ])
        
        
    }

    
    
    func configureResentCodeBtn(){
        
        view.addSubview(resentCodeBtn)
        resentCodeBtn.setTitle("Resend code", for: .normal)
        resentCodeBtn.setTitleColor(#colorLiteral(red: 0.1647058824, green: 0.1647058824, blue: 0.7529411765, alpha: 1), for: .normal)

//        resentCodeBtn.titleLabel?.adjustsFontSizeToFitWidth = true
        resentCodeBtn.titleLabel?.font = UIFont.systemFont(ofSize: 14)
        resentCodeBtn.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
        
            resentCodeBtn.topAnchor.constraint(equalTo: continueBtn.bottomAnchor, constant: 10),
            resentCodeBtn.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            resentCodeBtn.heightAnchor.constraint(equalToConstant: 50),
            resentCodeBtn.widthAnchor.constraint(equalToConstant: 110)

        ])
        
    }
    
    
    func configureChangeNumBtn(){
        
        view.addSubview(changeNumBtn)
        changeNumBtn.setTitle("Change Number", for: .normal)
        changeNumBtn.setTitleColor(#colorLiteral(red: 0.1647058824, green: 0.1647058824, blue: 0.7529411765, alpha: 1), for: .normal)

//        changeNumBtn.titleLabel?.adjustsFontSizeToFitWidth = true
        changeNumBtn.titleLabel?.font = UIFont.systemFont(ofSize: 14)
        changeNumBtn.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
        
            changeNumBtn.topAnchor.constraint(equalTo: continueBtn.bottomAnchor, constant: 10),
            changeNumBtn.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            changeNumBtn.heightAnchor.constraint(equalToConstant: 50),
            changeNumBtn.widthAnchor.constraint(equalToConstant: 110)

        ])
        
    }
    
    
}




extension MobileNumberVerificationVC: UITextFieldDelegate{
    
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        

        let textFieldArr = [TF1,TF2,TF3,TF4]
        let maxLength = 1

        for i in textFieldArr{
            if textField == i {
//                 let allowedCharacters = CharacterSet(charactersIn:"0123456789")
//                 let characterSet = CharacterSet(charactersIn: string)
//                 return allowedCharacters.isSuperset(of: characterSet)
                
                let currentString: NSString = textField.text! as NSString
                let newString: NSString = currentString.replacingCharacters(in: range, with: string) as NSString
                return newString.length <= maxLength
                
             }
        }
        
        return true
    }
    
    
    

    
    
    

    
    
}
