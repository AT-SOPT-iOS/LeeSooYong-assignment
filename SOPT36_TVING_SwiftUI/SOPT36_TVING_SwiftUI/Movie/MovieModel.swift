//
//  MovieModel.swift
//  SOPT36_TVING_SwiftUI
//
//  Created by LEESOOYONG on 5/28/25.
//

import SwiftUI

struct MovieModel: Identifiable {
    let id = UUID()
    let image: String
}

let moviedummy : [MovieModel] = [
    MovieModel(image: "harry"),
    MovieModel(image: "signal"),
    MovieModel(image: "ring"),
    MovieModel(image: "solo"),
    MovieModel(image: "you2"),
    MovieModel(image: "doctor"),
]
