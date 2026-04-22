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
    //필터를 위한 변수 생성
    @State var selectedCategories: [String] = []
    
    //Computed Property 만들기
    var filterPosts: [Post] {
        if selectedCategories.isEmpty {
            return posts
        } else {
            let selected = selectedCategories.first!
            return posts.filter { post in
                post.selectedCategories.contains(selected)
            }
        }
    }
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 0) {
                HomeProfile().padding(.top, 32)
                FilterBar(selectedCategories: $selectedCategories).padding(.top).padding(.bottom, 8)
                Divider()
                
                ZStack(alignment: .bottomTrailing) {
                    ScrollView(.vertical, showsIndicators: false) {
                        VStack(spacing: 16) {
                            ForEach(filterPosts) { post in
                                NavigationLink(destination: DetailView(data: post)) {
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
                                .buttonStyle(.plain)
                            }
                        }
                        .padding()
                    }
                    
                    FloatingButton()
                }
            }
        }
    }
}


#Preview {
    ContentView()
}
