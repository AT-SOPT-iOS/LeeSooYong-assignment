//
//  CategoryModel.swift
//  SOPT36_TVING_SwiftUI
//
//  Created by LEESOOYONG on 5/28/25.
//

import SwiftUI

struct CategoryModel: Identifiable {
    let id = UUID()
    let image: String
}

let catedummy: [CategoryModel] = [
    CategoryModel(image: "afc"),
    CategoryModel(image: "apple"),
    CategoryModel(image: "kbl"),
    CategoryModel(image: "kbo"),
]
