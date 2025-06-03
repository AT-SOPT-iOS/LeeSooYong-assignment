//
//  Kbo.swift
//  SOPT36_TVING_SwiftUI
//
//  Created by LEESOOYONG on 5/28/25.
//

import SwiftUI

struct KboModel: Identifiable {
    let id = UUID()
    let image: String
}

let kbodummy: [KboModel] = [
    KboModel(image: "doo"),
    KboModel(image: "ssg"),
    KboModel(image: "giants"),
    KboModel(image: "hw"),
    KboModel(image: "ki"),
    KboModel(image: "kia"),
    KboModel(image: "kt"),
    KboModel(image: "lg"),
    KboModel(image: "nc"),
    KboModel(image: "sam")
]
