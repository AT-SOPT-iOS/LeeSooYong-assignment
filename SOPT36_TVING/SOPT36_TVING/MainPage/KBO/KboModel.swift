//
//  KboModel.swift
//  SOPT36_TVING
//
//  Created by LEESOOYONG on 5/1/25.
//

import UIKit

struct KboModel {
    let itemImg: UIImage
    let backColor: UIColor
}

extension KboModel {
    static func dummy() -> [KboModel] {
        return [
            KboModel(itemImg: .doo, backColor: .white),
            KboModel(itemImg: .kia, backColor: .black),
            KboModel(itemImg: .lg, backColor: .white),
            KboModel(itemImg: .sam, backColor: .black),
            KboModel(itemImg: .ssg, backColor: .white),
            KboModel(itemImg: .nc, backColor: .black),
            KboModel(itemImg: .giants, backColor: .white),
            KboModel(itemImg: .ki, backColor: .black),
            KboModel(itemImg: .hw, backColor: .white),
            KboModel(itemImg: .kt, backColor: .black),
        ]
    }
}
