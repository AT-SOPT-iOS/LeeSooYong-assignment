//
//  TitleBarView.swift
//  SOPT36_TVING
//
//  Created by LEESOOYONG on 5/2/25.
//

import UIKit
import SnapKit

final class TitleBarView: UIView {

    private let titleImageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "tvingTitle"))
        return imageView
    }()

    private let searchButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "search"), for: .normal)
        return button
    }()

    private let logoImageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "logo"))
        return imageView
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .black
        setupLayout()
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setupLayout() {
        [titleImageView, searchButton, logoImageView].forEach {
            self.addSubview($0)
        }

        titleImageView.snp.makeConstraints {
            $0.top.equalToSuperview()
            $0.leading.equalToSuperview().offset(10)
            $0.width.equalTo(192)
            $0.height.equalTo(78)
        }

        searchButton.snp.makeConstraints {
            $0.centerY.equalTo(titleImageView)
            $0.trailing.equalTo(logoImageView.snp.leading).offset(-10)
        }

        logoImageView.snp.makeConstraints {
            $0.centerY.equalTo(titleImageView)
            $0.trailing.equalToSuperview().offset(-10)
        }
    }
}
