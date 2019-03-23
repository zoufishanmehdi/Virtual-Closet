//
//  LoginController.swift
//  Virtual Closet
//
//  Created by Zoufishan Mehdi on 3/23/19.
//  Copyright © 2019 Zoufishan Mehdi. All rights reserved.
//

import UIKit

class LoginController: UIViewController {
    
    let inputsContainerView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 5
        view.layer.masksToBounds = true
        return view
    }()
    
    let loginRegisterButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = .lightGray
        button.setTitle("Register", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        return button
    }()
    
    let nameTextfield: UITextField = {
        let tf = UITextField()
        tf.placeholder = "Name"
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()
    
    let nameSeparatorView: UIView = {
        let view = UIView()
        view.backgroundColor = .lightGray
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor(red:1.00, green:0.35, blue:0.38, alpha:1.0)
        
        view.addSubview(inputsContainerView)
        view.addSubview(loginRegisterButton)
        
        setupInputsContainerView()
        
        setupLoginRegisterButton()
    }
    
    func setupInputsContainerView() {
        inputsContainerView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        inputsContainerView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        inputsContainerView.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -24).isActive = true
        inputsContainerView.heightAnchor.constraint(equalToConstant: 150).isActive = true
        
        inputsContainerView.addSubview(nameTextfield)
        inputsContainerView.addSubview(nameSeparatorView)
        
        nameTextfield.leftAnchor.constraint(equalTo: inputsContainerView.leftAnchor, constant: 12).isActive = true
        nameTextfield.topAnchor.constraint(equalTo: inputsContainerView.topAnchor).isActive = true
        nameTextfield.widthAnchor.constraint(equalTo: inputsContainerView.widthAnchor).isActive = true
        nameTextfield.heightAnchor.constraint(equalTo: inputsContainerView.heightAnchor, multiplier: 1/3).isActive = true
        
        nameSeparatorView.leftAnchor.constraint(equalTo: inputsContainerView.leftAnchor).isActive = true
        nameSeparatorView.topAnchor.constraint(equalTo: nameTextfield.bottomAnchor).isActive = true
        nameSeparatorView.widthAnchor.constraint(equalTo: inputsContainerView.widthAnchor).isActive = true
        nameSeparatorView.heightAnchor.constraint(equalToConstant: 1).isActive = true 
    }
    
    func setupLoginRegisterButton() {
        loginRegisterButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        loginRegisterButton.topAnchor.constraint(equalTo: inputsContainerView.bottomAnchor, constant: 12).isActive = true
        loginRegisterButton.widthAnchor.constraint(equalTo: inputsContainerView.widthAnchor).isActive = true
        loginRegisterButton.heightAnchor.constraint(equalToConstant: 30).isActive = true
    }
}
