//
//  DetailView.swift
//  Challenge02
//
//  Created by Han on 4/20/26.
//
import SwiftUI

struct DetailView: View {
    let data: Post
    //    모집중, 모집완료 태그
    @State var status: Bool = true
    
    var body: some View {
        ZStack(alignment: .bottom) {
            ScrollView(.vertical, showsIndicators: false) {
                VStack {
                    HStack {
                        VStack(alignment: .leading) {
                            //모집상태 태그
                            GatheringStatus(status: status)
                            
                            //모집 제목
                            Text(data.title)
                                .font(.title)
                                .bold()
                                .padding(.bottom,8)
                                .fixedSize(horizontal: false, vertical: true)
                            
                            //모집 설명글
                            Text(data.content)
                                .font(.body)
                                .padding(.bottom,28)
                            
                            //주최자 영역 타이틀
                            Text("주최자")
                                .font(.title2)
                                .bold()
                            
                            //주최자 프로필
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
                            
                            //모임정보 타이틀
                            Text("모임 정보")
                                .font(.title2)
                                .bold()
                                .padding(.bottom,12)
                            
                            //장소
                            HStack {
                                Image("Location")
                                    .padding(.trailing, 8)
                                Text(data.location)
                            }
                            .padding(.bottom,4)
                            
                            //시간
                            HStack {
                                Image("Calender")
                                    .padding(.trailing, 8)
                                Text("\(data.selectedDate)")
                            }
                        }
                        Spacer()
                    }
                }
                .padding(.horizontal,20)
                .padding(.top,40)
                .padding(.bottom,24)
                
                //모집신청자 타이틀 컴포넌트 조합
                VStack(alignment: .leading) {
                    //모임 신청자 타이틀
                    HStack {
                        Text("모임 신청자")
                            .font(.title2)
                            .bold()
                            .padding(.trailing,2)
                        
                        Text("3/3")
                            .font(.callout)
                            .foregroundStyle(.gray)
                            .padding(.vertical,2)
                            .padding(.horizontal,8)
                            .background {
                                Capsule()
                                    .fill(Color(.systemGray5))
                            }
                        Spacer()
                        
                        Text("더보기")
                            .foregroundStyle(.gray)
                            .padding(.trailing,4)
                    }
                    .padding(.bottom,12)
                    
                    //게스트 리스트
                    VStack(spacing: 12) {
                        ForEach(data.participants) { item in
                            GuestListView(guest: item, process: "참여가능")
                        }
                    }
                }
                .padding(.horizontal,20)
                .padding(.bottom,80)
                
            }
        }
    }
}

#Preview {
    DetailView(data: Post(host: Host(name: "Han", hostProfileImage: "user_profile"), title: "SwiftUI 스터디", content: "같이 공부해요!", location: "강남역", selectedDate: .now))
}
