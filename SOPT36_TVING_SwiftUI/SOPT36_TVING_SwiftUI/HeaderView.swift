//
//  HeaderView.swift
//  SOPT36_TVING_SwiftUI
//
//  Created by LEESOOYONG on 5/28/25.
//

import SwiftUI

struct HeaderView: View {
    let categories: [String] = ["홈", "드라마", "예능", "영화", "스포츠", "뉴스"]
    
    @State private var selected: String = "홈"
    @Namespace private var namespace
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack(alignment: .center, spacing: 8) {
                Image("tvingTitle")
                Spacer()
                Image("search")
                Image("logo")
            }
            .padding(EdgeInsets(top: 25, leading: 8, bottom: 0, trailing: 8))
            
            HStack {
                ForEach(categories, id: \.self) { category in
                    ZStack(alignment: .bottom) {
                        if selected == category {
                            Capsule()
                                .fill(.white)
                                .matchedGeometryEffect(id: "categoryUnderLine", in: namespace).frame(width: 50, height: 3)
                                .offset(y:10)
                        }
                        Text(category)
                            .foregroundColor(.white)
                            .font(.headline)
                    }
                    .frame(maxWidth: .infinity)
                    .frame(height: 55)
                    .onTapGesture {
                        withAnimation(.spring()) {
                            selected = category
                        }
                    }
                }
            }
            .padding(5)
        }
        .background(.black)
    }
}

#Preview {
    HeaderView()
}
