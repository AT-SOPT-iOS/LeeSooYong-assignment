//
//  PdModel.swift
//  SOPT36_TVING_SwiftUI
//
//  Created by LEESOOYONG on 5/28/25.
//

import SwiftUI

struct PdModel: Identifiable {
    let id = UUID()
    let image: String
}

let pddummy: [PdModel] = [
    PdModel(image: "earth"),
    PdModel(image: "life"),
    PdModel(image: "love"),
    PdModel(image: "star"),
    PdModel(image: "sun"),
]
