//
//  BottomViewController.swift
//  SOPT36_TVING
//
//  Created by LEESOOYONG on 5/2/25.
//

import UIKit
import SnapKit

class BottomViewController: UIViewController {
    override func viewDidLoad() {
    
        super.viewDidLoad()
        self.view.backgroundColor = .black
        
        setLayout()
    }
    
    private func setLayout() {
        [noticeView, noticeLabel, addnoticeLabel ,noticeConetenLabel, privateLabel, infoLabel, forwardImageView].forEach {
            view.addSubview($0)
        }
        
        noticeView.snp.makeConstraints {
            $0.width.equalTo(347)
            $0.height.equalTo(50)
            $0.top.equalToSuperview().offset(16)
            $0.leading.equalToSuperview().offset(16)
        }
        
        noticeLabel.snp.makeConstraints {
            $0.centerY.equalTo(noticeView)
            $0.leading.equalTo(noticeView.snp.leading).offset(10)
        }
        
        addnoticeLabel.snp.makeConstraints {
            $0.centerY.equalTo(noticeView)
            $0.leading.equalTo(noticeLabel.snp.trailing).offset(10)
        }
        
        noticeConetenLabel.snp.makeConstraints {
            $0.top.equalTo(noticeView.snp.bottom).offset(10)
            $0.leading.equalTo(noticeView.snp.leading).offset(10)
        }
        
        privateLabel.snp.makeConstraints {
            $0.top.equalTo(noticeView.snp.bottom).offset(10)
            $0.leading.equalTo(noticeConetenLabel.snp.trailing).offset(10)
        }
        
        infoLabel.snp.makeConstraints {
            $0.top.equalTo(noticeConetenLabel.snp.bottom).offset(5)
            $0.leading.equalTo(noticeView.snp.leading).offset(10)
        }
        
        forwardImageView.snp.makeConstraints {
            $0.centerY.equalTo(noticeView)
            $0.trailing.equalTo(noticeView.snp.trailing).offset(-10)
            $0.width.height.equalTo(18)
        }
        
    }
    
    private let noticeView: UIView = {
        let view = UIView()
        view.backgroundColor = .gray4
        return view
    } ()
    
    private let noticeLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor.gray3
        label.text = "공지"
        label.font = UIFont.pretendard(size: 11, weight: .semibold)
        return label
    } ()
    
    private let addnoticeLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor.white
        label.text = "티빙 계정 공유 정책 추가 안내"
        label.font = UIFont.pretendard(size: 11, weight: .semibold)
        return label
    } ()
    
    private let forwardImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "forward")
        return imageView
    } ()
    
    private let noticeConetenLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor.gray3
        label.text = "고객문의 이용약관"
        label.font = UIFont.pretendard(size: 11, weight: .semibold)
        return label
    } ()
    
    private let privateLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor.white
        label.text = "개인정보처리방침"
        label.font = UIFont.pretendard(size: 11, weight: .semibold)
        return label
    } ()
    
    private let infoLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor.gray3
        label.text = "사업자정보 인재채용"
        label.font = UIFont.pretendard(size: 11, weight: .semibold)
        return label
    } ()
}
