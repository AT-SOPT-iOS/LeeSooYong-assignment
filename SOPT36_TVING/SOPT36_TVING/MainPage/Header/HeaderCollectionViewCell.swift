//
//  HeaderCollectionViewCell.swift
//  SOPT36_TVING
//
//  Created by LEESOOYONG on 5/2/25.
//

import UIKit

class HeaderCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "HeaderCollectionViewCell"
    
    private let headerLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.font = UIFont.pretendard(size: 16, weight: .medium)
        label.textAlignment = .center
        return label
    } ()
    
    private let headerView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        return view
    } ()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = .black
        setLayout()
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setLayout() {
        [headerLabel, headerView].forEach {
            contentView.addSubview($0)
        }
        
        headerLabel.snp.makeConstraints {
            $0.top.leading.trailing.equalToSuperview()
            $0.bottom.equalToSuperview().inset(10)
        }
        
        headerView.snp.makeConstraints {
            $0.centerX.equalTo(headerLabel.snp.centerX)
            $0.top.equalTo(headerLabel.snp.bottom).offset(1)
            $0.width.equalTo(15)
            $0.height.equalTo(3)
        }
    }
}

extension HeaderCollectionViewCell {
    func dataBind(_ headerData: HeaderModel) {
        headerLabel.text = headerData.HeaderLabel
        headerView.isHidden = headerData.HeaderViewHidden
    }
}
