//
//  CheckModel.swift
//  LoginAndSingup
//
//  Created by littlema on 2019/6/29.
//  Copyright © 2019 littema. All rights reserved.
//

import Foundation

enum CheckInputError: Error {
    case accountEmpty
    case passwordEmpty
    case checkPasswordEmpty
}

enum CheckInputErrorDesc: String {
    case accountEmpty = "Account should not be empty"
    case passwordEmpty = "Password should not be empty"
    case checkPasswordEmpty = "CheckPassword should not be empty"
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
