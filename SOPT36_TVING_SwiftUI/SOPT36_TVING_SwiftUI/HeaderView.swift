//
//  HeaderView.swift
//  SOPT36_TVING_SwiftUI
//
//  Created by LEESOOYONG on 5/28/25.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        HStack(spacing: 8) {
            Image("tvingTitle")
            Spacer()
            Image("search")
            Image("logo")
        }
        .padding()
        .background(.black)
    }
}

#Preview {
    HeaderView()
}
