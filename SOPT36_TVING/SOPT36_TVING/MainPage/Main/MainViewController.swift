//
//  MainTableViewController.swift
//  SOPT36_TVING
//
//  Created by LEESOOYONG on 5/2/25.
//

import UIKit
import SnapKit


class MainViewController: UIViewController {
    
    private let scrollView = UIScrollView()
    private let stackView = UIStackView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        
        setFixedView()
        setupScrollView()
        setupStackView()
        addAllSections()
    }
    
    private func setFixedView() {
        let fixedContainer = UIStackView()
        fixedContainer.axis = .vertical
        fixedContainer.spacing = 20
        view.addSubview(fixedContainer)

        fixedContainer.snp.makeConstraints {
            $0.top.equalTo(view.safeAreaLayoutGuide)
            $0.leading.trailing.equalToSuperview()
        }

        let titleBarView = TitleBarView()
        titleBarView.snp.makeConstraints { $0.height.equalTo(55) }
        fixedContainer.addArrangedSubview(titleBarView)

        let headerVC = HeaderViewController()
        addChild(headerVC)
        fixedContainer.addArrangedSubview(headerVC.view)
        headerVC.didMove(toParent: self)
        headerVC.view.snp.makeConstraints { $0.height.equalTo(50) }
    }

    private func setupScrollView() {
        view.addSubview(scrollView)

        scrollView.snp.makeConstraints {
            $0.top.equalTo(view.safeAreaLayoutGuide).offset(140)
            $0.leading.trailing.bottom.equalTo(view.safeAreaLayoutGuide)
        }

        scrollView.addSubview(stackView)
    }

    private func setupStackView() {
        stackView.axis = .vertical
        stackView.spacing = 20

        stackView.snp.makeConstraints {
            $0.edges.equalToSuperview().inset(UIEdgeInsets(top: 0, left: 0, bottom: 25, right: 0))
            $0.width.equalToSuperview()
        }
    }

    private func addAllSections() {

        let mainImageView = UIImageView(image: UIImage(named: "main"))
        mainImageView.contentMode = .scaleAspectFill
        mainImageView.clipsToBounds = true
        stackView.addArrangedSubview(mainImageView)
        mainImageView.snp.makeConstraints {
            $0.height.equalTo(450)
        }
        
        let rankingVC = RankingViewController()
        let liveVC = LiveViewController()
        let movieVC = MovieViewController()
        let kboVC = KboViewController()
        let cateVC = CateViewController()
        let kghVC = KghViewController()
        let bottomVC = BottomViewController()
        
        [rankingVC, liveVC, movieVC, kboVC, cateVC, kghVC, bottomVC].forEach { addSection($0) }
    }

    private func addSection(_ childVC: UIViewController) {
        addChild(childVC)
        stackView.addArrangedSubview(childVC.view)
        childVC.didMove(toParent: self)

       if childVC is LiveViewController {
            childVC.view.snp.makeConstraints { $0.height.equalTo(150) }
        } else if childVC is MovieViewController {
            childVC.view.snp.makeConstraints { $0.height.equalTo(200) }
        } else if childVC is KboViewController {
            childVC.view.snp.makeConstraints { $0.height.equalTo(60) }
        } else if childVC is KghViewController {
            childVC.view.snp.makeConstraints { $0.height.equalTo(150) }
        } else if childVC is RankingViewController {
            childVC.view.snp.makeConstraints { $0.height.equalTo(180) }
        } else if childVC is CateViewController {
            childVC.view.snp.makeConstraints { $0.height.equalTo(50) }
        } else if childVC is BottomViewController {
            childVC.view.snp.makeConstraints { $0.height.equalTo(100) }
        }
    }
}

#Preview{
    MainViewController()
}
