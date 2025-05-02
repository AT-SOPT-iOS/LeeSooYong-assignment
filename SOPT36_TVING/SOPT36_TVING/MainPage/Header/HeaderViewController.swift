//
//  HeaderViewController.swift
//  SOPT36_TVING
//
//  Created by LEESOOYONG on 5/2/25.
//

import UIKit

class HeaderViewController: UIViewController {
    
    final let cellHeight: CGFloat = 50
    final let cellWidth: CGFloat = 55
    
    private var headerData = HeaderModel.dummy()
    
//    private let titleImageView: UIImageView = {
//        let imageView = UIImageView()
//        imageView.image = UIImage(named: "tvingTitle")
//        return imageView
//    } ()
//    
//    private let searchButton: UIButton = {
//        let button = UIButton()
//        button.setImage(UIImage(named: "search"), for: .normal)
//        return button
//    } ()
//    
//    private let logoImageView: UIImageView = {
//        let imageView = UIImageView()
//        imageView.image = UIImage(named: "logo")
//        return imageView
//    } ()
//    
//    
//    private let mainImageView: UIImageView = {
//        let imageView = UIImageView()
//        imageView.image = UIImage(named: "main")
//        return imageView
//    } ()
    
    
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
        view.addSubview(collectionView)
//        [titleImageView, searchButton, logoImageView, mainImageView].forEach { view.addSubview($0) }
        
        collectionView.snp.makeConstraints {
            $0.trailing.equalToSuperview()
            $0.leading.equalToSuperview().offset(10)
            $0.top.equalToSuperview()
            $0.height.equalTo(cellHeight)
        }
        
//        titleImageView.snp.makeConstraints {
//            $0.top.equalToSuperview().offset(16)
//            $0.leading.equalToSuperview().offset(10)
//            $0.width.equalTo(192)
//            $0.height.equalTo(78)
//        }
//        
//        searchButton.snp.makeConstraints {
//            $0.centerY.equalTo(titleImageView.snp.centerY)
//            $0.trailing.equalTo(logoImageView.snp.leading).offset(-10)
//        }
//        
//        logoImageView.snp.makeConstraints {
//            $0.centerY.equalTo(titleImageView.snp.centerY)
//            $0.trailing.equalToSuperview().offset(-10)
//        }
//        
//        mainImageView.snp.makeConstraints {
//            $0.top.equalTo(collectionView.snp.bottom).offset(15)
//            $0.leading.equalToSuperview().offset(16)
//            $0.width.equalTo(375)
//            $0.height.equalTo(400)
//        }
        
    }
        
    private func register() {
        collectionView.register(
            HeaderCollectionViewCell.self,
            forCellWithReuseIdentifier: HeaderCollectionViewCell.identifier
        )
    }
    
    private func setDelegate() {
        collectionView.delegate = self
        collectionView.dataSource = self
    }
}

extension HeaderViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: cellWidth, height: cellHeight)
    }
}

extension HeaderViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return headerData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: HeaderCollectionViewCell.identifier, for: indexPath) as? HeaderCollectionViewCell else {
                return UICollectionViewCell()
            }
        cell.dataBind(headerData[indexPath.item])
        return cell
    }
}
