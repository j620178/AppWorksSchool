//
//  LoginCheck.swift
//  Week3
//
//  Created by littlema on 2019/6/28.
//  Copyright © 2019 littema. All rights reserved.
//

import Foundation
import UIKit

class InitLayout {
    let titleLable: UILabel = {
        let label = UILabel()
        label.text = "AppWorks School"
        label.textColor = UIColor.black
        label.font = label.font.withSize(40)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var stateSegment: UISegmentedControl = {
        let segmented = UISegmentedControl(items: ["Log In", "Sign Up"])
        segmented.selectedSegmentIndex = 0
        segmented.tintColor = UIColor.black
        segmented.translatesAutoresizingMaskIntoConstraints = false
    
        return segmented
    }()
    var inputUIView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.lightGray
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var button: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor.black
        button.tintColor = UIColor.white
        button.setTitle("Button", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
}

class InitInputLayout {
    var inputContainerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var inputLabel: UILabel = {
        let label = UILabel()
        label.text = ""
        label.textAlignment = .center
        label.textColor = UIColor.black
        label.font = label.font.withSize(16)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var inputTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = ""
        textField.backgroundColor = UIColor.white
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.layer.cornerRadius = 5
        return textField
    }()

    init(name:String, name2:String) {
        self.inputLabel.text = name
        self.inputTextField.placeholder = name2
    }
}

enum CheckInputError: Error {
    case accountEmpty
    case passwordEmpty
    case checkPasswordEmpty
}

//Answer3-3
func checkUserInput(account: String, password: String, checkPassword: String, status: Int) throws {
    if account == "" {
        throw CheckInputError.accountEmpty
    } else if password == "" {
        throw CheckInputError.passwordEmpty
    } else if checkPassword == "" && status == 1 {
        throw CheckInputError.checkPasswordEmpty
    }
}

enum CheckLogInError: Error {
    case logInFail
    case otherFail
}

//Answer3-4
func checkLogIn(account: String, password: String) throws -> Bool{
    if account == "appwork_school@gmail.com", password == "1234" {
        return true
    } else {
        throw CheckLogInError.logInFail
    }
}

enum CheckSignUpError: Error {
    case signUpFail
    case otherFail
}

//Answer3-5
func checkSignUp(accunt: String, password: String, checkPassword:String) throws -> Bool {
    if password == checkPassword {
        return true
    } else if password != checkPassword {
        throw CheckSignUpError.signUpFail
    } else {
        throw CheckSignUpError.otherFail
    }
}
