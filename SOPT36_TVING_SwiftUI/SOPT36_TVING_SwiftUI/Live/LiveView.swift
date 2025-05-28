//
//  LiveView.swift
//  SOPT36_TVING_SwiftUI
//
//  Created by LEESOOYONG on 5/28/25.
//

import SwiftUI

struct LiveView: View {
    let lives = livedummy
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            HStack {
                Text("실기간 인기 LIVE")
                    .font(.headline)
                    .foregroundColor(.white)
                Spacer()
                Text("더보기")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            .padding([.top, .horizontal], 8)
            
            ScrollView(.horizontal) {
                HStack(spacing: 3) {
                    ForEach(lives) { live in
                        VStack(alignment: .leading, spacing: 10) {
                            Image(live.image)
                                .resizable()
                                .frame(width: 160, height: 80)
                            
                            HStack(alignment: .top, spacing: 10) {
                                Text("\(live.rank)")
                                    .foregroundColor(.white)
                                    .font(.system(size: 19, weight: .bold))
                                    .italic(true)
                                    .padding(.top, 5)
                                
                                VStack(alignment: .leading, spacing: 5) {
                                    Text("\(live.title)")
                                        .foregroundColor(.white)
                                        .font(.callout)
                                    Text("\(live.subtitle)")
                                        .foregroundColor(.gray)
                                        .font(.subheadline)
                                    Text("\(live.percent)")
                                        .foregroundColor(.gray)
                                        .font(.subheadline)
                                }
                            }
                        }
                    }
                    .padding([.horizontal, .bottom], 8)
                }
            }
        }
        .background(.black)
    }
}

#Preview {
    LiveView()
}
