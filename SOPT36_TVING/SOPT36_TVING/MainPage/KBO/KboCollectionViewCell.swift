//
//  KboCollectionViewCell.swift
//  SOPT36_TVING
//
//  Created by LEESOOYONG on 5/1/25.
//

import UIKit

class KboCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "KboCollectionViewCell"
    
    private let kboImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        return imageView
    } ()
    
    private let kboContainer: UIView = {
        let view = UIView()
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
        contentView.addSubview(kboContainer)
        kboContainer.addSubview(kboImageView)
        
        kboContainer.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
        
        kboImageView.snp.makeConstraints {
            $0.center.equalToSuperview()
            $0.width.equalTo(80)
            $0.height.equalTo(50)
        }
    }
}

extension KboCollectionViewCell {
    func dataBind(_ kboData: KboModel) {
        kboImageView.image = kboData.itemImg
        kboContainer.backgroundColor = kboData.backColor
     }
}
