//
//  LiveModel.swift
//  SOPT36_TVING
//
//  Created by LEESOOYONG on 5/1/25.
//

import UIKit

struct LiveModel {
    let itemImg: UIImage
    let ranking: String
    let tv: String
    let num: String
    let percent: String
}

extension LiveModel {
    static func dummy() -> [LiveModel] {
        return [
            LiveModel(itemImg: .love, ranking: "1", tv: "JTBC", num: "이혼숙려캠프 34화", percent: "27.2%"),
            LiveModel(itemImg: .star, ranking: "2", tv: "뿅뿅지구오락실", num: "14화", percent: "24.1%"),
            LiveModel(itemImg: .divorce, ranking: "3", tv: "TVING", num: "2화", percent: "35.5%"),
            LiveModel(itemImg: .earth, ranking: "4", tv: "TVING", num: "1화", percent: "40.7%"),
            LiveModel(itemImg: .life, ranking: "5", tv: "TVING", num: "3화", percent: "31.1%"),
            LiveModel(itemImg: .sun, ranking: "6", tv: "TVING", num: "10화", percent: "46.6%"),
        ]
    }
}
