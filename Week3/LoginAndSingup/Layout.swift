//
//  Layout.swift
//  LoginAndSingup
//
//  Created by littlema on 2019/6/29.
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
        
        segmented.addTarget(ViewController.self, action: #selector(ViewController.indexChanged(_:)), for: .valueChanged)
        
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
        
        button.addTarget(ViewController.self, action: #selector(ViewController.checkButton), for: .touchUpInside)
        
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
    
    init(labelText: String, placeholder: String) {
        self.inputLabel.text = labelText
        self.inputTextField.placeholder = placeholder
    }
}
