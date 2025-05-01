//
//  RankingModel.swift
//  SOPT36_TVING
//
//  Created by LEESOOYONG on 5/1/25.
//

import UIKit

struct RankingModel {
    let itemImg: UIImage
    let ranking: String
}

extension RankingModel {
    static func dummy() -> [RankingModel] {
        return [
            RankingModel(itemImg: .signal, ranking: "1"),
            RankingModel(itemImg: .harry, ranking: "2"),
            RankingModel(itemImg: .ring, ranking: "3"),
            RankingModel(itemImg: .rice, ranking: "4"),
            RankingModel(itemImg: .doctor, ranking: "5"),
            RankingModel(itemImg: .plz, ranking: "6"),
            RankingModel(itemImg: .heart4, ranking: "7"),
            RankingModel(itemImg: .base, ranking: "8"),
            RankingModel(itemImg: .nct, ranking: "9"),
            RankingModel(itemImg: .solo, ranking: "10"),
            RankingModel(itemImg: .you2, ranking: "11"),
        ]
    }
}
