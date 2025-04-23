//
//  LoginViewController.swift
//  SOPT36_TVING
//
//  Created by LEESOOYONG on 4/23/25.
//

import UIKit

final class LoginViewController: UIViewController, DataBindDelegate {
    func dataBind(id: String) {
        idTextField.text = id
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .black
        self.idTextField.autocapitalizationType = .none
        
        idTextField.setPlaceholderColor(UIColor(named: "gray2") ?? .gray4)
        passwordTextField.setPlaceholderColor(UIColor(named: "gray2") ?? .gray4)
        
        setLayout()
    }
    
    private func setLayout() {
        [backBtnImageView, titleLabel, idTextField, passwordTextField, loginButton
         ,findIdButton, divideLine, findPwButton, noAccountButton, nickButton].forEach {
            self.view.addSubview($0)
            $0.translatesAutoresizingMaskIntoConstraints = false
        }
        
        NSLayoutConstraint.activate([
            backBtnImageView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor),
            backBtnImageView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 30),
            backBtnImageView.widthAnchor.constraint(equalToConstant: 8),
            backBtnImageView.heightAnchor.constraint(equalToConstant: 15)
        ])
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: self.backBtnImageView.topAnchor, constant: 35),
            titleLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
        ])
        
        NSLayoutConstraint.activate([
            idTextField.topAnchor.constraint(equalTo: self.titleLabel.bottomAnchor, constant: 40),
            idTextField.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            idTextField.widthAnchor.constraint(equalToConstant: 335),
            idTextField.heightAnchor.constraint(equalToConstant: 52)
        ])
    
        NSLayoutConstraint.activate([
            passwordTextField.topAnchor.constraint(equalTo: self.idTextField.bottomAnchor, constant: 7),
            passwordTextField.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            passwordTextField.widthAnchor.constraint(equalToConstant: 335),
            passwordTextField.heightAnchor.constraint(equalToConstant: 52)
        ])
        
        NSLayoutConstraint.activate([
            loginButton.topAnchor.constraint(equalTo: self.passwordTextField.bottomAnchor, constant: 19),
            loginButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            loginButton.widthAnchor.constraint(equalToConstant: 335),
            loginButton.heightAnchor.constraint(equalToConstant: 52)
        ])
        
        NSLayoutConstraint.activate([
            findIdButton.topAnchor.constraint(equalTo: self.loginButton.bottomAnchor, constant: 30),
            findIdButton.leadingAnchor.constraint(equalTo: self.loginButton.leadingAnchor, constant: 60),
            findIdButton.heightAnchor.constraint(equalToConstant: 22)
        ])
        
        NSLayoutConstraint.activate([
            divideLine.topAnchor.constraint(equalTo: self.loginButton.bottomAnchor, constant: 35),
            divideLine.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            divideLine.widthAnchor.constraint(equalToConstant: 1),
            divideLine.heightAnchor.constraint(equalToConstant: 12)
        ])
        
        NSLayoutConstraint.activate([
            findPwButton.topAnchor.constraint(equalTo: self.loginButton.bottomAnchor, constant: 30),
            findPwButton.trailingAnchor.constraint(equalTo: self.loginButton.trailingAnchor, constant: -50),
            findPwButton.heightAnchor.constraint(equalToConstant: 22)
        ])
        
        NSLayoutConstraint.activate([
            noAccountButton.topAnchor.constraint(equalTo: self.findIdButton.bottomAnchor, constant: 30),
            noAccountButton.leadingAnchor.constraint(equalTo: self.loginButton.leadingAnchor, constant: 20),
            noAccountButton.heightAnchor.constraint(equalToConstant: 22)
        ])
        
        
        NSLayoutConstraint.activate([
            nickButton.topAnchor.constraint(equalTo: self.findPwButton.bottomAnchor, constant: 30),
            nickButton.trailingAnchor.constraint(equalTo: self.loginButton.trailingAnchor, constant: -30),
            nickButton.heightAnchor.constraint(equalToConstant: 22)
        ])

    }
    
    @objc
    private func loginButtonDidTapped() {
        pushToWelcomeVC()
    }
    
    private func pushToWelcomeVC() {
        let welcomeVC = WelcomeViewController()
        welcomeVC.delegate = self
        welcomeVC.id = idTextField.text
        self.navigationController?.pushViewController(welcomeVC, animated: true)
    }
    
    private let backBtnImageView: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "before")
        image.contentMode = .scaleAspectFit
        return image
    } ()
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "TVING ID 로그인"
        label.textColor = .white
        label.textAlignment = .center
        label.font = UIFont.pretendard(size: 23, weight: .semibold)
        return label
    } ()
    
    private let idTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "아이디"
        textField.font = UIFont.pretendard(size: 15, weight: .bold)
        textField.textColor = UIColor(named: "gray2")
        textField.layer.cornerRadius = 3
        textField.backgroundColor = UIColor(named: "gray4")
        textField.leftView = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 15.0, height: 0.0))
        textField.leftViewMode = .always
        return textField
    } ()
    
    private let passwordTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "비밀번호"
        textField.font = UIFont.pretendard(size: 15, weight: .bold)
        textField.textColor = UIColor(named: "gray2")
        textField.layer.cornerRadius = 3
        textField.backgroundColor = UIColor(named: "gray4")
        textField.leftView = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 15.0, height: 0.0))
        textField.leftViewMode = .always
        return textField
    } ()
    
    private let loginButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(named: "black")
        button.setTitle("로그인하기", for: .normal)
        button.setTitleColor(UIColor(named: "gray2"), for: .normal)
        button.titleLabel?.font = UIFont.pretendard(size: 14, weight: .bold)
        button.layer.cornerRadius = 3
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor(named: "gray4")?.cgColor
        button.addTarget(self, action: #selector(loginButtonDidTapped), for: .touchUpInside)
        return button
    } ()
    
    private let findIdButton: UIButton = {
        let button = UIButton()
        button.setTitle("아이디 찾기", for: .normal)
        button.titleLabel?.font = UIFont.pretendard(size: 14, weight: .bold)
        button.setTitleColor(UIColor(named: "gray2"), for: .normal)
        return button
    } ()
    
    private let divideLine: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(named: "gray4")
        return view
    } ()
    
    private let findPwButton: UIButton = {
        let button = UIButton()
        button.setTitle("비밀번호 찾기", for: .normal)
        button.titleLabel?.font = UIFont.pretendard(size: 14, weight: .bold)
        button.setTitleColor(UIColor(named: "gray2"), for: .normal)
        return button
    } ()
    
    private let noAccountButton: UIButton = {
        let button = UIButton()
        button.setTitle("아직 계정이 없으신가요?", for: .normal)
        button.titleLabel?.font = UIFont.pretendard(size: 14, weight: .bold)
        button.setTitleColor(UIColor(named: "gray3"), for: .normal)
        return button
    } ()
    
    private let nickButton: UIButton = {
        let button = UIButton()
        button.setTitle("닉네임 만들러가기", for: .normal)
        button.titleLabel?.font = UIFont.pretendard(size: 14, weight: .regular)
        button.setTitleColor(UIColor(named: "gray2"), for: .normal)
        button.setUnderline()
        return button
    } ()
}
