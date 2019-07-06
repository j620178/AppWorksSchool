//
//  ViewController.swift
//  LoginAndSingup
//
//  Created by littlema on 2019/6/29.
//  Copyright © 2019 littema. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    var layout = InitLayout()
    var row1 = InitInputLayout(labelText: "Acount", placeholder: "EnterAccount")
    var row2 = InitInputLayout(labelText: "Password", placeholder: "EnterPassword")
    var row3 = InitInputLayout(labelText: "Check", placeholder: "EnterPassword")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        view.addSubview(layout.titleLable)
        view.addSubview(layout.stateSegment)
        view.addSubview(layout.inputUIView)
        view.addSubview(layout.button)
        
        let userInputs = [row1, row2, row3]
        
        for aInput in userInputs {
            aInput.inputTextField.delegate = self
            
            layout.inputUIView.addSubview(aInput.inputContainerView)
            aInput.inputContainerView.addSubview(aInput.inputLabel)
            aInput.inputContainerView.addSubview(aInput.inputTextField)
        }
        
        constraintLayout()
        constraintInput(row: row1, top: layout.inputUIView.topAnchor)
        constraintInput(row: row2, top: row1.inputContainerView.bottomAnchor)
        constraintInput(row: row3, top: row2.inputContainerView.bottomAnchor)
        
        row3.inputLabel.textColor = UIColor.gray
        row3.inputTextField.isUserInteractionEnabled = false
        row3.inputTextField.backgroundColor = UIColor.gray
    }
    
    func constraintLayout() {
        NSLayoutConstraint.activate([
            //Answer2-1
            layout.titleLable.layoutMarginsGuide.topAnchor.constraint(equalTo: view.topAnchor, constant: 80),
            layout.titleLable.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            //Answer2-2
            layout.stateSegment.topAnchor.constraint(equalTo: layout.titleLable.bottomAnchor, constant: 70),
            layout.stateSegment.widthAnchor.constraint(equalToConstant: 150),
            layout.stateSegment.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            //Answer2-3
            layout.inputUIView.widthAnchor.constraint(equalToConstant: 255),
            layout.inputUIView.heightAnchor.constraint(equalToConstant: 125),
            layout.inputUIView.topAnchor.constraint(equalTo: layout.stateSegment.bottomAnchor, constant: 40),
            layout.inputUIView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            //Answer2-4
            layout.button.widthAnchor.constraint(equalToConstant: 235),
            layout.button.heightAnchor.constraint(equalToConstant: 30),
            layout.button.topAnchor.constraint(equalTo:layout.inputUIView.bottomAnchor, constant: 50),
            layout.button.centerXAnchor.constraint(equalTo: view.centerXAnchor)
            ])
    }
    
    func constraintInput(row: InitInputLayout, top: NSLayoutYAxisAnchor) {
        NSLayoutConstraint.activate([
            row.inputContainerView.topAnchor.constraint(equalTo: top),
            row.inputContainerView.widthAnchor.constraint(equalTo: layout.inputUIView.layoutMarginsGuide.widthAnchor),
            row.inputContainerView.heightAnchor.constraint(equalTo: layout.inputUIView.heightAnchor, multiplier: 1/3),
            row.inputContainerView.centerXAnchor.constraint(equalTo: layout.inputUIView.centerXAnchor),
            
            row.inputLabel.widthAnchor.constraint(equalTo: row.inputContainerView.widthAnchor, multiplier: 0.4),
            row.inputLabel.leftAnchor.constraint(equalTo: row.inputContainerView.leftAnchor),
            row.inputLabel.centerYAnchor.constraint(equalTo: row.inputContainerView.centerYAnchor),
            
            row.inputTextField.leadingAnchor.constraint(equalTo: row.inputLabel.trailingAnchor),
            row.inputTextField.rightAnchor.constraint(equalTo: row.inputContainerView.rightAnchor),
            row.inputTextField.centerYAnchor.constraint(equalTo: row.inputContainerView.centerYAnchor)
            ])
    }
    
    @objc func checkButton() {
        //Answer3-2,Answer3-3
        do {
            guard let account = row1.inputTextField.text, let password = row2.inputTextField.text, let checkPassword = row3.inputTextField.text else { return }
            try checkUserInput(account: account, password: password, checkPassword: checkPassword, status: layout.stateSegment.selectedSegmentIndex)
        } catch CheckInputError.accountEmpty {
            showAlert(title: "Error", message: CheckInputErrorDesc.accountEmpty.rawValue)
        } catch CheckInputError.passwordEmpty {
            showAlert(title: "Error", message: CheckInputErrorDesc.passwordEmpty.rawValue)
        } catch CheckInputError.checkPasswordEmpty {
            showAlert(title: "Error", message: CheckInputErrorDesc.checkPasswordEmpty.rawValue)
        } catch let error {
            fatalError("\(error)")
        }
        
        if layout.stateSegment.selectedSegmentIndex == 0 {
            do {
                guard let account = row1.inputTextField.text, let password = row2.inputTextField.text else { return }
                if try checkLogIn(account: account, password: password) {
                    showAlert(title: "Success", message: "logIn")
                }
            } catch CheckLogInError.logInFail {
                showAlert(title: "Error", message: "login Fail")
            } catch let error {
                fatalError("\(error)")
            }
        } else if layout.stateSegment.selectedSegmentIndex == 1 {
            do {
                guard let account = row1.inputTextField.text, let password = row2.inputTextField.text, let checkPassword = row3.inputTextField.text else { return }
                if try checkSignUp(accunt: account, password: password, checkPassword: checkPassword) {
                    showAlert(title: "Success", message: "signUp")
                }
            } catch CheckSignUpError.signUpFail {
                showAlert(title: "Error", message: "Signup Fail")
            } catch let error {
                fatalError("\(error)")
            }
        }
    }
    
    func showAlert(title: String, message: String, style: UIAlertController.Style = .alert) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: style)
        let alertAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertController.addAction(alertAction)
        present(alertController, animated: true, completion: nil)
    }
    
    //Answer3-1
    @objc func indexChanged(_ sender: UISegmentedControl) {
        if layout.stateSegment.selectedSegmentIndex == 0 {
            row3.inputLabel.textColor = UIColor.gray
            row3.inputTextField.isUserInteractionEnabled = false
            row3.inputTextField.backgroundColor = UIColor.gray
        } else {
            row3.inputLabel.textColor = UIColor.black
            row3.inputTextField.isUserInteractionEnabled = true
            row3.inputTextField.backgroundColor = UIColor.white
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if layout.stateSegment.selectedSegmentIndex == 1 {
            switch textField {
            case row1.inputTextField:
                row2.inputTextField.becomeFirstResponder()
                return false
            case row2.inputTextField:
                row3.inputTextField.becomeFirstResponder()
                return false
            case row3.inputTextField:
                textField.resignFirstResponder()
                return false
            default:
                break
            }
            return true
        } else {
            switch textField {
            case row1.inputTextField:
                row2.inputTextField.becomeFirstResponder()
                return false
            case row2.inputTextField:
                textField.resignFirstResponder()
                return false
            default:
                break
            }
            return true
        }
    }
}
