//
//  HomeCardView.swift
//  Challenge02
//
//  Created by Han on 4/17/26.
//

import SwiftUI

struct HomeCardView: View {
    //모집상태 변수 선언
    @State var status: Bool = true
    
    //타이틀과 모임정보
    var title: String
    var place: String
    var time: String
    
    //모임장과 모임신청자
    @State var host: Host
    @State var guests: [Guests]
    
    //신청현황
    var guestCount: Int //신청자수
    var guestLimit: Int //모임정원
    
    var body: some View {
        VStack(alignment: .leading) {
            //모집상태
            GatheringStatus(status: status)
            
            //타이틀
            Text(title)
                .font(.system(size: 20))
                .fontWeight(.semibold)
                .padding(.bottom,4)
            
            //장소, 시간
            HStack {
                //장소
                HStack {
                    Image("Location")
                    Text(place)
                }
                .font(.system(size: 16))
                .fontWeight(.regular)
                .foregroundStyle(Color.smallTextGray)
                
                //구분점
                Text("·")
                    .foregroundStyle(Color.smallTextGray)
                
                //시간
                HStack {
                    Image("Calender")
                    Text(time)
                }
                .font(.system(size: 16))
                .fontWeight(.regular)
                .foregroundStyle(Color.smallTextGray)
            }
            .padding(.bottom,4)
            
            //모임장, 참여자 프로필
            People(host: host, guests: guests, guestCount: guestCount, guestLimit: guestLimit)
        }
        
    }
}

#Preview {
    HomeCardView(status: true, title: "오늘 5km 러닝할 사람!", place: "대운동장", time: "04/03 13:00", host: Host(name: "Han", hostProfileImage: "user_profile"), guests: [Guests(guestName: "Hida", guestProfileImage: "user_profile"), Guests(guestName: "Jacky", guestProfileImage: "user_profile")], guestCount: 2, guestLimit: 4)
}
