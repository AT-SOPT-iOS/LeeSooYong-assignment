//
//  TodayModel.swift
//  SOPT36_TVING_SwiftUI
//
//  Created by LEESOOYONG on 5/28/25.
//

import SwiftUI

struct TodayModel: Identifiable {
    let id = UUID()
    let rank: Int
    let image: String

}

let todayDummy: [TodayModel] = [
    TodayModel(rank: 1, image: "base"),
    TodayModel(rank: 2, image: "doctor"),
    TodayModel(rank: 3, image: "harry"),
    TodayModel(rank: 4, image: "heart4"),
    TodayModel(rank: 5, image: "nct"),
    TodayModel(rank: 6, image: "plz"),
    TodayModel(rank: 7, image: "rice"),
    TodayModel(rank: 8, image: "ring"),
    TodayModel(rank: 9, image: "signal"),
    TodayModel(rank: 10, image: "solo"),
    TodayModel(rank: 11, image: "you2")
]
