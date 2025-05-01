//
//  LiveViewController.swift
//  SOPT36_TVING
//
//  Created by LEESOOYONG on 5/1/25.
//

import UIKit
import SnapKit

final class LiveViewController: UIViewController {
    
    final let cellHeight: CGFloat = 150
    final let liveInterItemSpacing: CGFloat = 20
    
    private var liveData = LiveModel.dummy()
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "실시간 인기 LIVE"
        label.textColor = .white
        label.font = UIFont.pretendard(size: 15, weight: .bold)
        return label
    } ()
    
    private let moreButton: UIButton = {
        let button = UIButton()
        button.setTitle("더보기", for: .normal)
        button.setTitleColor(UIColor.gray2, for: .normal)
        button.titleLabel?.font = UIFont.pretendard(size: 12, weight: .medium)
        return button
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
        [titleLabel, moreButton, collectionView].forEach {
            view.addSubview($0)
        }
        
        titleLabel.snp.makeConstraints {
            $0.leading.equalToSuperview().offset(16)
            $0.top.equalToSuperview().offset(80)
        }
        
        moreButton.snp.makeConstraints {
            $0.trailing.equalToSuperview().offset(-16)
            $0.top.equalToSuperview().offset(80)
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
            LiveCollectionViewCell.self,
            forCellWithReuseIdentifier: LiveCollectionViewCell.identifier
        )
    }
    
    private func setDelegate() {
        collectionView.delegate = self
        collectionView.dataSource = self
    }
}

extension LiveViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 160, height: cellHeight)
    }
    
    func collectionView(_collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInterSpacingForSectionAt section: Int) -> CGFloat {
        return liveInterItemSpacing
    }
}

extension LiveViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return liveData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: LiveCollectionViewCell.identifier, for: indexPath) as? LiveCollectionViewCell else {
                return UICollectionViewCell()
            }
        cell.dataBind(liveData[indexPath.item])
        return cell
    }
}

