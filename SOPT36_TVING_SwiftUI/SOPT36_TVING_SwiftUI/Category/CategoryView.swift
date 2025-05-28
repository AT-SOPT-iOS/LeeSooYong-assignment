//
//  CategoryView.swift
//  SOPT36_TVING_SwiftUI
//
//  Created by LEESOOYONG on 5/28/25.
//

import SwiftUI

struct CategoryView: View {
    let cates = catedummy
    
    var body: some View {
        ScrollView(.horizontal) {
            HStack(spacing: 5) {
                ForEach(cates) { cate in
                    Image(cate.image)
                        .resizable()
                        .frame(width: 90, height: 45)
                }
            }
            .padding([.vertical, .horizontal], 8)
        }
        .background(.black)
    }
}

#Preview {
    CategoryView()
}
