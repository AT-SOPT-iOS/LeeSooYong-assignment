//
//  HeaderModel.swift
//  SOPT36_TVING
//
//  Created by LEESOOYONG on 5/2/25.
//

import UIKit

struct HeaderModel {
    let HeaderLabel: String
    let HeaderViewHidden: Bool
}

extension HeaderModel {
    static func dummy() -> [HeaderModel] {
        return [
            HeaderModel(HeaderLabel: "홈", HeaderViewHidden: false),
            HeaderModel(HeaderLabel: "드라마", HeaderViewHidden: true),
            HeaderModel(HeaderLabel: "예능", HeaderViewHidden: true),
            HeaderModel(HeaderLabel: "영화", HeaderViewHidden: true),
            HeaderModel(HeaderLabel: "스포츠", HeaderViewHidden: true),
            HeaderModel(HeaderLabel: "뉴스", HeaderViewHidden: true),
        ]
    }
}
