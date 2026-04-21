//
//  ContentView.swift
//  Challenge02
//
//  Created by Han on 4/15/26.
//
import SwiftUI
import SwiftData

struct ContentView: View {
    //데이터 불러오고 정렬하는 코드(reverse 써서 최신이 상단으로 가게 함. 정렬기준은 최신순)
    @Query(sort: \Post.createdAt, order: .reverse) var posts: [Post]
    
    var body: some View {
        VStack(spacing: 0) {
            HomeProfile().padding(.top, 32)
            FilterBar().padding(.top).padding(.bottom, 8)
            Divider()
            
            ZStack(alignment: .bottomTrailing) {
                ScrollView(.vertical, showsIndicators: false) {
                    VStack(spacing: 16) {
                        ForEach(posts) { post in
                            HomeCardView(
                                title: post.title,
                                place: post.location,
                                time: post.selectedDate,
                                host: post.host,
                                guests: post.participants,
                                guestCount: post.participants.count,
                                guestLimit: post.maxParticipants
                            )
                        }
                    }
                    .padding()
                }
                
                FloatingButton() // 글쓰기 버튼
            }
        }
    }
}


#Preview {
    ContentView()
}
