//
//  DetailView.swift
//  Challenge02
//
//  Created by Han on 4/20/26.
//
import SwiftUI

struct DetailView: View {
    let data: Post
    @State var status: Bool = true
    
    var body: some View {
        ZStack(alignment: .bottom) {
            ScrollView(.vertical, showsIndicators: false) {
                VStack {
                    HStack {
                        VStack(alignment: .leading) {
                            GatheringStatus(status: status)
                            
                            Text(data.title)
                                .font(.title)
                                .bold()
                                .padding(.bottom,2)
                                .fixedSize(horizontal: false, vertical: true)
                            
                            Text(data.content)
                                .font(.body)
                                .padding(.bottom,12)
                            
                            HStack {
                                Image(data.host.hostProfileImage)
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 32, height: 32)
                                    .clipShape(Circle())
                                    
                                Text(data.host.name)
                                    .font(.body)
                            }
                            .padding(.bottom,32)
                            
                            Text("모임 정보")
                                .font(.title2)
                                .bold()
                                .padding(.bottom,12)
                            
                            HStack {
                                Image("Location") // 이미지가 없다면 시스템 아이콘 추천
                                    .padding(.trailing, 4)
                                Text(data.location)
                            }
                            .padding(.bottom,4)
                            
                            HStack {
                                Image("Calender")
                                    .padding(.trailing, 4)
                                Text("\(data.selectedDate.formatted(date: .abbreviated, time: .omitted))")
                            }
                        }
                        Spacer()
                    }
                }
                .padding(.horizontal,20)
                .padding(.top,40)
                .padding(.bottom,24)
                
                // 모집신청자 타이틀 영역
                VStack(alignment: .leading) {
                    HStack {
                        Text("모임 신청자")
                            .font(.title2)
                            .bold()
                            .padding(.trailing,2)
                        
                        Text("\(data.participants.count)/\(data.maxParticipants)")
                            .font(.callout)
                            .foregroundStyle(.gray)
                            .padding(.vertical,2)
                            .padding(.horizontal,8)
                            .background(Capsule().fill(Color(.systemGray5)))
                        
                        Spacer()
                        
                        Text("더보기")
                            .foregroundStyle(.gray)
                            .padding(.trailing,4)
                    }
                    .padding(.bottom,20)
                    
                    VStack(spacing: 12) {
                        ForEach(data.participants) { item in
                            GuestListView(guest: item)
                        }
                    }
                    GuestListView(guest: Guests(guestName: "Han", guestProfileImage: "user_profile", guestClassTime: "오후반", process: "신청완료"))
                }
                .padding(.horizontal,20)
            }
        }
    }
}


#Preview {
    DetailView(data: Post(host: Host(name: "Han", hostProfileImage: "user_profile"), title: "SwiftUI 스터디", content: "같이 공부해요!", location: "강남역", selectedDate: .now))
}
