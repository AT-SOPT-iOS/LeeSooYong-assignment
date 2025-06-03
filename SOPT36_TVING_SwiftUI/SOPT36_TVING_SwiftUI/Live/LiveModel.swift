//
//  LiveModel.swift
//  SOPT36_TVING_SwiftUI
//
//  Created by LEESOOYONG on 5/28/25.
//

import SwiftUI

struct LiveModel: Identifiable {
    let id = UUID()
    let rank: Int
    let title: String
    let subtitle: String
    let percent: String
    let image: String
}

let livedummy: [LiveModel] = [
    LiveModel(rank: 1, title: "JTBC", subtitle: "이론숙려캠프 34화", percent: "27.2%", image: "love"),
    LiveModel(rank: 2, title: "뿅뿅지구오락실", subtitle: "14화", percent: "24.1%", image: "star"),
    LiveModel(rank: 3, title: "이혼", subtitle: "보험", percent: "33.2%", image: "divorce"),
    LiveModel(rank: 4, title: "슬기로운", subtitle: "전공의생활", percent: "36.2%", image: "life"),
    LiveModel(rank: 5, title: "지구", subtitle: "오락실", percent: "45.2%", image: "earth"),
    LiveModel(rank: 6, title: "선재", subtitle: "튀어라", percent: "38.2%", image: "sun"),
]
