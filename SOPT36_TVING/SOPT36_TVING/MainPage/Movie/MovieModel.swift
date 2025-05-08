//
//  MovieModel.swift
//  SOPT36_TVING
//
//  Created by LEESOOYONG on 5/1/25.
//

import UIKit

struct MovieModel {
    let itemImg: UIImage
}

extension MovieModel {
    static func dummy() -> [MovieModel] {
        return [
            MovieModel(itemImg: .signal),
            MovieModel(itemImg: .harry),
            MovieModel(itemImg: .ring),
            MovieModel(itemImg: .rice),
            MovieModel(itemImg: .doctor),
            MovieModel(itemImg: .plz),
            MovieModel(itemImg: .heart4),
            MovieModel(itemImg: .base),
            MovieModel(itemImg: .nct),
            MovieModel(itemImg: .solo),
            MovieModel(itemImg: .you2),
        ]
    }
}
