//
//  MovieView.swift
//  SOPT36_TVING_SwiftUI
//
//  Created by LEESOOYONG on 5/28/25.
//

import SwiftUI

struct MovieView: View {
    let movies = moviedummy
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack(alignment: .center) {
                Text("실기간 인기 영화")
                    .font(.headline)
                    .foregroundColor(.white)
                Spacer()
                Text("더보기")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            .padding([.top, .horizontal], 8)
            
            ScrollView(.horizontal) {
                HStack {
                    ForEach(movies) { movie in
                        Image(movie.image)
                            .resizable()
                            .frame(width: 98, height: 146)
                    }
                }
            }
            .padding([.vertical, .horizontal], 8)
        }
        .background(.black)
    }
}

#Preview {
    MovieView()
}
