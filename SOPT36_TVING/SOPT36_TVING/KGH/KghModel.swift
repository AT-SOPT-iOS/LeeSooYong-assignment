//
//  KghModel.swift
//  SOPT36_TVING
//
//  Created by LEESOOYONG on 5/1/25.
//

import UIKit

struct KghModel {
    let itemImg: UIImage
}

extension KghModel {
    static func dummy() -> [KghModel] {
        return [
            KghModel(itemImg: .earth),
            KghModel(itemImg: .life),
            KghModel(itemImg: .divorce),
            KghModel(itemImg: .sun),
            KghModel(itemImg: .star),
        ]
    }
}
