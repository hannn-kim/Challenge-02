//
//  GuestListView.swift
//  Challenge02
//
//  Created by Han on 4/21/26.
//
import SwiftUI

struct GuestListView: View {
    var guest: Guests
    var process: String
    
    var body: some View {
        HStack {
            //프로필 이미지
            Image(guest.guestProfileImage)
                .resizable()
                .scaledToFill()
                .frame(width: 40, height: 40)
                .clipShape(Circle())
                .padding(.trailing,6)
                .padding(.leading,12)
                        
            //이름과 클래스타임
            VStack(alignment: .leading) {
                HStack {
                    Text(guest.guestName)
                        .font(.body)
                        .bold()
                    
                    Text(guest.guestClassTime)
                        .font(.body)
                        .foregroundStyle(.gray)
                }
            }
            
            Spacer()
            
            //게스트 신청처리 상태
            Text(process)
                .padding(.leading,24)
                .padding(.trailing,12)
                .foregroundStyle(process == "참여가능" ? .green : .orange)
        }
        .padding(.horizontal,12)
        .padding(.vertical,20)
        .background(Color.white)
        .clipShape(RoundedRectangle(cornerRadius: 20))
        .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color(.systemGray4)))
    }
}
