//
//  KBOView.swift
//  SOPT36_TVING_SwiftUI
//
//  Created by LEESOOYONG on 5/28/25.
//

import SwiftUI

struct KboView: View {
    let kbos = kbodummy
    
    var body: some View {
        ScrollView(.horizontal) {
            HStack {
                ForEach(kbos.indices, id: \.self) { index in
                    let kbo = kbos[index]
                    Image(kbo.image)
                        .resizable()
                        .frame(width: 80, height: 50)
                        .background(index % 2 == 0 ? .white : .black)
                }
            }
        }
        .padding(.horizontal, 8)
        .padding(.vertical, 25)
    }
}

#Preview {
    KboView()
}
