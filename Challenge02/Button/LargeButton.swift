//
//  LargeButton.swift
//  Challenge02
//
//  Created by Han on 4/19/26.
//

import SwiftUI

struct LargeButton: View {
    var title: String
    var action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.headline)
                .fontWeight(.bold)
                .foregroundColor(.black)
                .frame(maxWidth: .infinity)
                .frame(height: 64)
                .background(Color("BrandColor"))
                .cornerRadius(12)
        }
        .padding(.horizontal)
        .padding(.bottom)
    }
}

#Preview {
    LargeButton(title: "신청하기") {
        print("신청 버튼 클릭됨")
    }
}
