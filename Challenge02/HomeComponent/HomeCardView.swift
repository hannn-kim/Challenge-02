//
//  HomeCardView.swift
//  Challenge02
//
//  Created by Han on 4/17/26.
//

import SwiftUI

struct HomeCardView: View {
    @State var status: Bool = true
    
    @State var title: String
    @State var place: String
    @State var time: Date
    
    @State var host: Host
    @State var guests: [Guests]
    
    var guestCount: Int
    var guestLimit: Int
    
    var body: some View {
        VStack(alignment: .leading) {
            GatheringStatus(status: status)
            
            Text(title)
                .font(.system(size: 20))
                .fontWeight(.semibold)
                .padding(.bottom,4)
            
            HStack {
                HStack {
                    Image("Location")
                    Text(place)
                }
                .font(.system(size: 16))
                .foregroundStyle(Color.smallTextGray)
                
                Text("·")
                    .foregroundStyle(Color.smallTextGray)
                
                HStack {
                    Image("Calender")
                    Text(time.formatted(date: .numeric, time: .shortened))
                }
                .font(.system(size: 16))
                .foregroundStyle(Color.smallTextGray)
            }
            .padding(.bottom,6)
            
            People(host: host, guests: guests, guestCount: guestCount, guestLimit: guestLimit)
            
            Divider()
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(.top)
    }
}


#Preview {
    HomeCardView(status: true, title: "오늘 5km 러닝할 사람!", place: "대운동장", time: Date.now, host: Host(name: "Han", hostProfileImage: "user_profile"), guests: [Guests(guestName: "Hida", guestProfileImage: "user_profile", guestClassTime: "오후반", process: "참여가능")], guestCount: 2, guestLimit: 4)
}
