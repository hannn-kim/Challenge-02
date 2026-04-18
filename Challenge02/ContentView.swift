//
//  ContentView.swift
//  Challenge02
//
//  Created by Han on 4/15/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        //프로필뷰
        HomeProfile()
        
        //카테고리뷰
        FilterBar()
            .padding(.top)
            .padding(.bottom,8)
        
        //구분선
        Divider()
        
        //게시글 카드뷰
    }
}

#Preview {
    ContentView()
}
