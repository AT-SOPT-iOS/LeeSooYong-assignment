//
//  RankingCollectionViewCell.swift
//  SOPT36_TVING
//
//  Created by LEESOOYONG on 5/1/25.
//

import UIKit

final class RankingCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "RankingCollectionViewCell"
    
    private let rankingLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.textAlignment = .center
        label.transform = CGAffineTransform(rotationAngle: 0.15)
        label.font = UIFont.pretendard(size: 50, weight: .bold)
        return label
    } ()
    
    private let rankingImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.layer.cornerRadius = 3
        return imageView
    }()
    
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
        [rankingLabel, rankingImageView].forEach {
            contentView.addSubview($0)
        }
        
        rankingImageView.snp.makeConstraints {
            $0.trailing.top.bottom.equalToSuperview()
            $0.leading.equalToSuperview().inset(55)
        }
        
        rankingLabel.snp.makeConstraints {
            $0.trailing.equalTo(rankingImageView.snp.leading).offset(-5)
            $0.bottom.equalToSuperview()
        }
    }
}

extension RankingCollectionViewCell {
    func dataBind(_ rankingData: RankingModel) {
        rankingLabel.text = rankingData.ranking
        rankingImageView.image = rankingData.itemImg
     }
}
