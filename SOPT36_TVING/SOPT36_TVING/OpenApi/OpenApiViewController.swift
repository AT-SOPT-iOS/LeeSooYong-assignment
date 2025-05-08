//
//  OpenApiViewController.swift
//  SOPT36_TVING
//
//  Created by LEESOOYONG on 5/8/25.
//

import UIKit
import SnapKit
import Then

final class OpenApiViewController: UIViewController {
    
    private var targetDt: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setLayout()
    }
    
    @objc private func textFieldDidEditing(_ textField: UITextField) {
        switch textField {
        case dateTextField:
            targetDt = textField.text ?? ""
        default:
            targetDt = textField.text ?? ""
        }
    }
    
    @objc private func searchButtonTap() {
        Task {
            do {
                let movieList = try await OpenApiService.shared.fetchMovieList(targetDt: self.targetDt.isEmpty ? nil : self.targetDt)
                let infoTexts = movieList.map {
                    "\($0.rank)위 - \($0.movieNm) (\($0.openDt))"
                }.joined(separator: "\n")
                self.infoLabel.text = "\(self.targetDt)의 영화 순위:\n\n\(infoTexts)"
            } catch {
                self.infoLabel.text = "조회 실패 \n 날짜를 입력해주세요."
            }
        }
    }
    
    private func setLayout() {
        self.view.backgroundColor = .black
        self.view.addSubview(stackView)
        
        dateTextField.setPlaceholderColor(UIColor(named: "gray2") ?? .gray4)
        
        stackView.snp.makeConstraints {
            $0.leading.trailing.equalTo(self.view.safeAreaLayoutGuide).inset(40)
            $0.top.bottom.equalTo(self.view.safeAreaLayoutGuide).inset(100)
        }
        
        dateTextField.snp.makeConstraints {
            $0.height.equalTo(50)
        }
        
        searchButton.snp.makeConstraints {
            $0.height.equalTo(50)
        }
        
        [dateTextField, infoLabel, searchButton].forEach {
            self.stackView.addArrangedSubview($0)
        }
    }
    
    private let stackView = UIStackView().then {
        $0.axis = .vertical
        $0.distribution = .equalSpacing
        $0.spacing = 20
    }
    
    private lazy var dateTextField = UITextField().then {
        $0.addTarget(self,
                     action: #selector(textFieldDidEditing(_:)),
                     for: .allEvents)
        $0.textColor = UIColor(named: "gray2")
        $0.backgroundColor = .gray4
        $0.placeholder = "날짜를 입력하세요"
    }
    
    private lazy var infoLabel = UILabel().then {
        $0.textColor = .white
        $0.textAlignment = .left
        $0.numberOfLines = 0
        $0.font = UIFont.pretendard(size: 16, weight: .semibold)
    }
    
    private lazy var searchButton = UIButton().then {
        $0.setTitle("검색", for: .normal)
        $0.backgroundColor = .red
        $0.titleLabel?.textColor = .white
        $0.titleLabel?.font = UIFont.pretendard(size: 18, weight: .semibold)
        $0.addTarget(self, action: #selector(searchButtonTap), for: .touchUpInside)
    }
}
