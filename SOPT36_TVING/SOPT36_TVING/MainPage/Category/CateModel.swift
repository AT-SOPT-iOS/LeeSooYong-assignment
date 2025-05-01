//
//  CateModel.swift
//  SOPT36_TVING
//
//  Created by LEESOOYONG on 5/1/25.
//

import UIKit

struct CateModel {
    let itemImg: UIImage
}

extension CateModel {
    static func dummy() -> [CateModel] {
        return [
            CateModel(itemImg: .apple),
            CateModel(itemImg: .kbo),
            CateModel(itemImg: .kbl),
            CateModel(itemImg: .afc),
        ]
    }
}
