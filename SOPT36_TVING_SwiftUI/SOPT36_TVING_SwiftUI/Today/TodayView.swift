//
//  TodayView.swift
//  SOPT36_TVING_SwiftUI
//
//  Created by LEESOOYONG on 5/28/25.
//

import SwiftUI

struct TodayView: View {
    let ranks = todayDummy
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("오늘의 티빙 TOP20")
                .font(.headline)
                .foregroundColor(.white)
                .padding([.top, .leading], 8)
            ScrollView(.horizontal) {
                HStack(alignment: .bottom, spacing: 10) {
                    ForEach(ranks) { rank in
                        Text("\(rank.rank)")
                            .foregroundColor(.white)
                            .font(.system(size: 50, weight: .bold))
                            .italic(true)
                        Image(rank.image)
                            .resizable()
                            .frame(width: 98, height: 146)
                    }
                }
                .padding([.horizontal, .bottom])
            }
        }
        .background(.black)
    }
}

#Preview {
    TodayView()
}
