//
//  KghCollectionViewCell.swift
//  SOPT36_TVING
//
//  Created by LEESOOYONG on 5/1/25.
//

import UIKit

class KghCollectionViewCell: UICollectionViewCell {
    static let identifier = "KghCollectionViewCell"
    
    private let kghImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        return imageView
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
        self.addSubview(kghImageView)
        
        kghImageView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
    }
}

extension KghCollectionViewCell {
    func dataBind(_ kghData: KghModel) {
        kghImageView.image = kghData.itemImg
    }
}
