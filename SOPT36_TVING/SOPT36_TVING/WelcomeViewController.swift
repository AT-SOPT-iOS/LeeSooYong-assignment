//
//  WelcomeViewController.swift
//  SOPT36_TVING
//
//  Created by LEESOOYONG on 4/24/25.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .black
        self.navigationItem.hidesBackButton = true
        
        setLayout()
        
        bindID()
    }
    
    var id: String?
    
    private func bindID() {
        guard let id = id else { return }
        self.welcomeLabel.text = "\(id)님 \n 반가워요!"
    }
    
    let width = UIScreen.main.bounds.width
    
    private func setLayout() {
        [tvingImageView, welcomeLabel,toMainButton].forEach {
            self.view.addSubview($0)
            $0.translatesAutoresizingMaskIntoConstraints = false
        }
        
        NSLayoutConstraint.activate([
            tvingImageView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 30),
            tvingImageView.widthAnchor.constraint(equalToConstant: width),
        ])
        
        NSLayoutConstraint.activate([
            welcomeLabel.topAnchor.constraint(equalTo: self.tvingImageView.bottomAnchor, constant: 30),
            welcomeLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor)
        ])
        
        NSLayoutConstraint.activate([
            toMainButton.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor, constant: -60),
            toMainButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            toMainButton.widthAnchor.constraint(equalToConstant: 335),
            toMainButton.heightAnchor.constraint(equalToConstant: 52)
        ])
    }
    
    @objc
    private func backToMainDidTapped() {
        self.navigationController?.popToRootViewController(animated: true)
    }
    
    private let tvingImageView: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "TVING")
        image.contentMode = .scaleAspectFit
        return image
    } ()
    
    private let welcomeLabel: UILabel = {
        let label = UILabel()
        label.text = "atsopt@naver.com 님 \n 반가워요!"
        label.textColor = UIColor(named: "white")
        label.textAlignment = .center
        label.numberOfLines = 2
        label.font = UIFont.pretendard(size: 23, weight: .bold)
        return label
    } ()
    
    private let toMainButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(named: "red")
        button.setTitle("메인으로", for: .normal)
        button.layer.cornerRadius = 3
        button.setTitleColor(UIColor(named: "white"), for: .normal)
        button.titleLabel?.font = UIFont.pretendard(size: 14, weight: .bold)
        button.addTarget(self, action: #selector(backToMainDidTapped), for: .touchUpInside)
        return button
    } ()
}
