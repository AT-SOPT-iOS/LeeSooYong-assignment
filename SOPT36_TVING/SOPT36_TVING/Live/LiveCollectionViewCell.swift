//
//  LiveCollectionViewCell.swift
//  SOPT36_TVING
//
//  Created by LEESOOYONG on 5/1/25.
//

import UIKit

class LiveCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "LiveCollectionViewCell"
    
    private let liveImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        return imageView
    } ()
    
    private let liveLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.font = UIFont.pretendard(size: 19, weight: .bold)
        return label
    } ()
    
    private let liveTvLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.font = UIFont.pretendard(size: 10, weight: .semibold)
        return label
    } ()
    
    private let liveNumLabel: UILabel = {
        let label = UILabel()
        label.textColor = .gray2
        label.font = UIFont.pretendard(size: 10, weight: .medium)
        return label
    } ()
    
    private let livePerLabel: UILabel = {
        let label = UILabel()
        label.textColor = .gray2
        label.font = UIFont.pretendard(size: 10, weight: .medium)
        return label
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
        [liveImageView, liveLabel, liveTvLabel, liveNumLabel, livePerLabel].forEach {
            contentView.addSubview($0)
        }
        
        liveImageView.snp.makeConstraints {
            $0.trailing.top.equalToSuperview()
            $0.leading.equalToSuperview()
            $0.bottom.equalToSuperview().inset(70)
        }
        
        liveLabel.snp.makeConstraints {
            $0.top.equalTo(liveImageView.snp.bottom).offset(10)
            $0.leading.equalTo(liveImageView.snp.leading).offset(10)
        }
        
        liveTvLabel.snp.makeConstraints {
            $0.top.equalTo(liveLabel.snp.top)
            $0.leading.equalTo(liveLabel.snp.trailing).offset(10)
        }
        
        liveNumLabel.snp.makeConstraints {
            $0.top.equalTo(liveTvLabel.snp.bottom).offset(5)
            $0.leading.equalTo(liveLabel.snp.trailing).offset(10)
        }
        
        livePerLabel.snp.makeConstraints {
            $0.top.equalTo(liveNumLabel.snp.bottom).offset(5)
            $0.leading.equalTo(liveLabel.snp.trailing).offset(10)
        }
    }
}

extension LiveCollectionViewCell {
    func dataBind(_ liveData: LiveModel) {
        liveLabel.text = liveData.ranking
        liveTvLabel.text = liveData.tv
        liveNumLabel.text = liveData.num
        livePerLabel.text = liveData.percent
        liveImageView.image = liveData.itemImg
     }
}
