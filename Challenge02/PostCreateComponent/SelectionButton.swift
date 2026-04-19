//
//  SelectionButton.swift
//  Challenge02
//
//  Created by Han on 4/19/26.
//

import SwiftUI

struct SelectionButton: View {
    var icon: String
    var title: String
    var actionDescription: String
    var isPlaceholder: Bool
    var action: () -> Void
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .bold()
            Button(action: action) {
                HStack(spacing: 12) {
                    Image(systemName: icon)
                        .font(.title3)
                        .foregroundStyle(.textGray)
                    Text(actionDescription)
                        .font(.callout)
                    Spacer()
                }
                .foregroundColor(isPlaceholder ? Color(uiColor: .placeholderText) : .black)
                .padding()
                .frame(height: 56)
                .background(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color.lineGray, lineWidth: 1)
                )
            }
        }
        .padding(.bottom,32)
    }
}

#Preview {
    SelectionButton(icon: "calendar.badge.clock", title: "모임 일정",actionDescription: "모임 날짜와 시간을 선택해주세요.", isPlaceholder: true, action: { print("버튼 클릭됨!") })
}
