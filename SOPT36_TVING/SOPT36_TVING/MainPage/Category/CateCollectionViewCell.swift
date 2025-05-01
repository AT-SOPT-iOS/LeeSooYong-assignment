//
//  CateCollectionViewCell.swift
//  SOPT36_TVING
//
//  Created by LEESOOYONG on 5/1/25.
//

import UIKit

class CateCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "CateCollectionViewCell"
    
    private let cateImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        return imageView
    } ()
    
    private let cateContainer: UIView = {
        let view = UIView()
        view.backgroundColor = .cateBox
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
        contentView.addSubview(cateContainer)
        cateContainer.addSubview(cateImageView)
        
        cateContainer.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
        
        cateImageView.snp.makeConstraints {
            $0.center.equalToSuperview()
            $0.width.equalTo(68)
            $0.height.equalTo(34)
        }
    }
}

extension CateCollectionViewCell {
    func dataBind(_ cateData: CateModel) {
        cateImageView.image = cateData.itemImg
     }
}

