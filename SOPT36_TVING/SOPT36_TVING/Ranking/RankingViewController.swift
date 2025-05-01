//
//  RankingViewController.swift
//  SOPT36_TVING
//
//  Created by LEESOOYONG on 5/1/25.
//

import UIKit
import SnapKit

final class RankingViewController: UIViewController {
    
    final let rankingInterItemSpacing: CGFloat = 30
    final let cellHeight: CGFloat = 146
    
    private var rankingData = RankingModel.dummy()
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "오늘의 티빙 TOP 20"
        label.textColor = .white
        label.font = UIFont.pretendard(size: 15, weight: .bold)
        return label
    }()
    
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
        [titleLabel, collectionView].forEach {
            view.addSubview($0)
        }
        
        titleLabel.snp.makeConstraints {
            $0.leading.equalToSuperview().offset(16)
            $0.top.equalToSuperview().offset(16)
        }
        
        collectionView.snp.makeConstraints {
            $0.leading.trailing.equalToSuperview()
            $0.top.equalTo(titleLabel.snp.bottom).offset(15)
            $0.height.equalTo(cellHeight)
        }
    }
    
    private func register() {
        collectionView.register(
            RankingCollectionViewCell.self,
            forCellWithReuseIdentifier: RankingCollectionViewCell.identifier
        )
    }
    
    private func setDelegate() {
        collectionView.delegate = self
        collectionView.dataSource = self
    }
}

extension RankingViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 150, height: cellHeight)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout,
                        minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return rankingInterItemSpacing
    }
}

extension RankingViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return rankingData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: RankingCollectionViewCell.identifier, for: indexPath) as? RankingCollectionViewCell else {
                return UICollectionViewCell()
            }
        cell.dataBind(rankingData[indexPath.item])
        return cell
    }
}
