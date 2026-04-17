//
//  HomeProfile.swift
//  Challenge02
//
//  Created by Han on 4/17/26.
//

import SwiftUI

struct HomeProfile: View {
    private let imageName: String = "user_profile"
    private let name: String = "Han"
    
    var body: some View {
        HStack {
            //프로필 이미지
            Image(imageName)
                .resizable()
                .scaledToFill()
                .frame(width: 60, height: 60)
                .clipShape(Circle())
            
            VStack {
                //닉네임
                Text(name)
                    .font(.system(size: 25, weight: .semibold))
                    .padding(.leading, 8)
                    .padding(.vertical, 2)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                //오전 or 오후
                Text("오후반")
                    .font(.system(size: 17))
                    .fontWeight(.semibold)
                    .foregroundColor(.gray)
                    .padding(.leading, 8)
                    .padding(.vertical, 0)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
        }
        .padding(.leading,20)
    }
}

#Preview {
    HomeProfile()
}
