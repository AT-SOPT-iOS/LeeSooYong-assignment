//
//  ContentView.swift
//  SOPT36_TVING_SwiftUI
//
//  Created by LEESOOYONG on 5/28/25.
//

import SwiftUI

struct ContentView: View {
    let header = HeaderView()
    let today = TodayView()
    let live = LiveView()
    let movie = MovieView()
    let kbo = KboView()
    let category = CategoryView()
    let pd = PdView()
    let bottom = BottomView()
    
    var body: some View {
        VStack {
            header
            ScrollView() {
                Image("main")
                    .resizable()
                    .frame(width: .infinity, height: 400)
                today
                live
                movie
                kbo
                category
                pd
                bottom
            }
            .scrollIndicators(.hidden)
        }
        .background(.black)
    }

}

#Preview {
    ContentView()
}
