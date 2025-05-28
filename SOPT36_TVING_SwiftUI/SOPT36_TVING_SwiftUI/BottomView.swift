//
//  BottomView.swift
//  SOPT36_TVING_SwiftUI
//
//  Created by LEESOOYONG on 5/28/25.
//

import SwiftUI

struct BottomView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack(alignment: .center) {
                Text("공지")
                    .font(.caption)
                    .foregroundColor(.gray2)
                    .padding(17)
                Text("티빙 계정 공유 정책 추가 안내")
                    .font(.caption)
                    .foregroundColor(.white)
                Spacer()
                Image("forward")
                    .padding(17)
            }
            .background(.gray4)
            .padding(.bottom, 15)
            
            HStack(alignment: .center) {
                Text("고객문의 · 이용약관 ·")
                    .font(.caption)
                    .foregroundColor(.gray2)
                Text("개인정보처리방침")
                    .font(.caption)
                    .foregroundColor(.white)
            }
            .padding(.bottom, 2)
            
            Text("사업자정보 · 인재채용")
                .font(.caption)
                .foregroundColor(.gray2)
            
        }
        .padding(.vertical, 14)
        .padding(.horizontal, 8)
        .background(.black)
    }
}

#Preview {
    BottomView()
}
