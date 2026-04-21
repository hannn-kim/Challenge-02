//
//  People.swift
//  Challenge02
//
//  Created by Han on 4/17/26.
//

import SwiftUI

struct People: View {
    //변수선언
    @State var host: Host
    @State var guests: [Guests]
    var guestCount: Int
    var guestLimit: Int
    
    //View 개발
    var body: some View {
        HStack {
            HStack {
                //host 프로필 이미지
                Image(host.hostProfileImage)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 32, height: 32)
                    .clipShape(Circle())
                //host 이름
                Text(host.name)
                    .font(.body)
                    .foregroundColor(.black)
            }
            .padding(.vertical,8)
            .padding(.trailing,16)
            
            //guest 프로필 이미지
            HStack(spacing: 0) {
                ForEach(guests) { guest in
                    Image(guest.guestProfileImage)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 32, height: 32)
                        .clipShape(Circle())
                }
                .padding(2)
                
                //신청인원수
                Text("\(guestCount)/\(guestLimit)명")
                    .padding(.leading,8)
            }
        }
    }
}

#Preview {
    People(host: Host(name: "Han", hostProfileImage: "user_profile"), guests: [Guests(guestName: "Hida", guestProfileImage: "user_profile", guestClassTime: "오후반", process: "참여가능")], guestCount: 1, guestLimit: 4)
}
