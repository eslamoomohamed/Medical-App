//
//  MobileNumberVerificationVC.swift
//  Medical App
//
//  Created by eslam on 5/30/21.
//

import UIKit

class MobileNumberVerificationVC: UIViewController {

    
    
    let imageView      = MADefaultImageView(with: "Logo")
    let label0         = MASeconderyLabel(text: "Verification", textAlignment: .center, fontSize: 25, textColor: #colorLiteral(red: 0.09411764706, green: 0.07843137255, blue: 0.3803921569, alpha: 1), weight: .semibold,numOflines: 0,fitWidth: false)
    let label1         = MASeconderyLabel(text: "Insert your code here:", textAlignment: .center, fontSize: 18, textColor: .black, weight: .semibold,numOflines: 0,fitWidth: false)
    let customView     = MARoundedView(cornerRaduis: 10, with: false, backgroundColor: .white)
    let clearBtn       = MAImageBtn(buttonTybe: "clearBtn")
    let stackView      = MADefaultStack()
    let TF1            = MATextField(placeHolder: "0", textAlignment: .center, keyboardType: .numberPad, isSecureTextEntry: false)
    let TF2            = MATextField(placeHolder: "0", textAlignment: .center, keyboardType: .numberPad, isSecureTextEntry: false)
    let TF3            = MATextField(placeHolder: "0", textAlignment: .center, keyboardType: .numberPad, isSecureTextEntry: false)
    let TF4            = MATextField(placeHolder: "0", textAlignment: .center, keyboardType: .numberPad, isSecureTextEntry: false)
    let stackView1     = MADefaultStack()
    let TFView1        = MALineView()
    let TFView2        = MALineView()
    let TFView3        = MALineView()
    let TFView4        = MALineView()
    let continueBtn    = MADefaultBtn(btnTitle: "Continue", titleColor: .white, backgroundColor: #colorLiteral(red: 0.1647058824, green: 0.1647058824, blue: 0.7529411765, alpha: 1), raduis: 15)
    let resentCodeBtn  = MADefaultBtn(btnTitle: "Resend code", titleColor: #colorLiteral(red: 0.1647058824, green: 0.1647058824, blue: 0.7529411765, alpha: 1), backgroundColor: .clear, raduis: 0)
    let changeNumBtn   = MADefaultBtn(btnTitle: "Change Number", titleColor: #colorLiteral(red: 0.1647058824, green: 0.1647058824, blue: 0.7529411765, alpha: 1), backgroundColor: .clear, raduis: 0)
    

    
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
            label1.heightAnchor.constraint(equalToConstant: 30),
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
    
    
    
    @objc func TFShouldClear() {
        let TFArr = [TF1,TF2,TF3,TF4]
        for i in TFArr{
            i.text = nil
        }
        TF1.becomeFirstResponder()
    }
    
    
    
    func configureStackView(){
        customView.addSubview(stackView)
        stackView.addArrangedSubview(TF1)
        stackView.addArrangedSubview(TF2)
        stackView.addArrangedSubview(TF3)
        stackView.addArrangedSubview(TF4)
        
        let TFArr = [TF1,TF2,TF3,TF4]
        for i in TFArr{
            i.delegate = self
            i.addTarget(self, action: #selector(self.textdDidChange(textField:)), for: .editingChanged)
        }
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
        NSLayoutConstraint.activate([
            stackView1.topAnchor.constraint(equalTo: stackView.bottomAnchor),
            stackView1.leadingAnchor.constraint(equalTo: customView.leadingAnchor, constant: 50),
            stackView1.trailingAnchor.constraint(equalTo: clearBtn.leadingAnchor, constant: -30),
            stackView1.bottomAnchor.constraint(equalTo: customView.bottomAnchor, constant: -9)
        ])
    }
    
    
    
    func configureContibueBtn(){
        view.addSubview(continueBtn)
        NSLayoutConstraint.activate([
            continueBtn.topAnchor.constraint(equalTo: customView.bottomAnchor, constant: 20),
            continueBtn.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            continueBtn.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            continueBtn.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    
    
    func configureResentCodeBtn(){
        view.addSubview(resentCodeBtn)
        resentCodeBtn.titleLabel?.font = UIFont.systemFont(ofSize: 14)
        NSLayoutConstraint.activate([
            resentCodeBtn.topAnchor.constraint(equalTo: continueBtn.bottomAnchor, constant: 10),
            resentCodeBtn.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            resentCodeBtn.heightAnchor.constraint(equalToConstant: 50),
            resentCodeBtn.widthAnchor.constraint(equalToConstant: 110)
        ])
    }
    
    
    
    func configureChangeNumBtn(){
        view.addSubview(changeNumBtn)
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
                let currentString: NSString = textField.text! as NSString
                let newString: NSString = currentString.replacingCharacters(in: range, with: string) as NSString
                return newString.length <= maxLength
            }
        }
        return true
    }
    
}
