//
//  PdView.swift
//  SOPT36_TVING_SwiftUI
//
//  Created by LEESOOYONG on 5/28/25.
//

import SwiftUI

struct PdView: View {
    
    let pd = pddummy
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("김가현PD의 인생작 TOP 5")
                .font(.headline)
                .foregroundColor(.white)
            ScrollView(.horizontal) {
                HStack {
                    ForEach(pd) { pd in
                        Image(pd.image)
                            .resizable()
                            .frame(width: 160, height: 90)
                    }
                }
            }
        }
        .padding([.vertical, .horizontal], 8)
        .background(.black)
    }
}

#Preview {
    PdView()
}
