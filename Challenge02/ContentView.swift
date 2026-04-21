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
            .padding(.top,32)
        
        //카테고리뷰
        FilterBar()
            .padding(.top)
            .padding(.bottom,8)
        
        //구분선
        Divider()
        
        ZStack(alignment: .bottomTrailing) {
            ScrollView(.vertical, showsIndicators: false) {
                //게시글 카드뷰
                HomeCardView(title: "러닝하실분", place: "대운동장", time: "04/25 13:00", host: Host(name: "Han", hostProfileImage: "user_profile"), guests: [Guests(guestName: "Hida", guestProfileImage: "user_profile", guestClassTime: "오후반", process: "참여가능")], guestCount: 1, guestLimit: 3)
            }
            FloatingButton()
        }
    }
}

#Preview {
    ContentView()
}
