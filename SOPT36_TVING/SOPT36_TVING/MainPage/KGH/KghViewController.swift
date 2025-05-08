//
//  KghViewController.swift
//  SOPT36_TVING
//
//  Created by LEESOOYONG on 5/1/25.
//

import UIKit
import SnapKit

final class KghViewController: UIViewController {
    
    final let cellHeight: CGFloat = 90
    
    private var kghData = KghModel.dummy()
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "김가현PD의 인생작 TOP 5"
        label.textColor = .white
        label.font = UIFont.pretendard(size: 15, weight: .bold)
        return label
    } ()
    
    private let collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.backgroundColor = .black
        collectionView.showsHorizontalScrollIndicator = false
        return collectionView
    } ()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .black
        
        setLayout()
        register()
        setDelegate()
    }
    
    private func setLayout() {
        [collectionView, titleLabel].forEach {
            view.addSubview($0)
        }
        
        titleLabel.snp.makeConstraints {
            $0.leading.equalToSuperview().offset(16)
            $0.top.equalToSuperview().offset(16)
        }
        
        collectionView.snp.makeConstraints {
            $0.trailing.equalToSuperview()
            $0.leading.equalToSuperview().inset(16)
            $0.top.equalTo(titleLabel.snp.bottom).offset(15)
            $0.height.equalTo(cellHeight)
        }
    }
    
    private func register() {
        collectionView.register (
            KghCollectionViewCell.self,
            forCellWithReuseIdentifier: KghCollectionViewCell.identifier
        )
    }
    
    private func setDelegate() {
        collectionView.delegate = self
        collectionView.dataSource = self
    }
}

extension KghViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 160, height: cellHeight)
    }
}

extension KghViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return kghData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: KghCollectionViewCell.identifier, for: indexPath) as? KghCollectionViewCell else {
                return UICollectionViewCell()
            }
        cell.dataBind(kghData[indexPath.item])
        return cell
    }
}
