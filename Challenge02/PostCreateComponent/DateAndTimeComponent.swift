//
//  SelectionButton.swift
//  Challenge02
//
//  Created by Han on 4/19/26.
//

import SwiftUI

struct DateAndTimeComponent: View {
    @State private var isSheetPresented = false
    @State private var selectedDate = Date()
    @State private var hasSelectedDate = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("모임 일정")
                .font(.system(size: 16, weight: .bold))
            
            Button(action: {
                isSheetPresented = true
            }) {
                HStack {
                    Image(systemName: "calendar.badge.clock")
                        .foregroundColor(hasSelectedDate ? .black: .gray)
                        .padding(.trailing,8)
                    
                    Text(hasSelectedDate ? formattedDate(selectedDate) : "모임 날짜와 시간을 선택해주세요.")
                        .foregroundColor(hasSelectedDate ? .black : .gray)
                    
                    Spacer()
                }
                .padding()
                .frame(maxWidth: .infinity)
                .frame(height: 56)
                .background(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color(uiColor: .systemGray4), lineWidth: 1)
                )
            }
        }
        .padding(.bottom,36)

        
        //Picker 시트 추가
        .sheet(isPresented: $isSheetPresented) {
            DateAndTimePicker(selection: $selectedDate) {
                hasSelectedDate = true
                isSheetPresented = false
            }
            .presentationDetents([.height(330)])
        }
    }
    
    
    func formattedDate(_ date: Date) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "MM/dd EEEE a hh:mm"
        formatter.locale = Locale(identifier: "ko_KR")
        return formatter.string(from: date)
    }
}

#Preview {
    VStack {
        DateAndTimeComponent()
        Spacer()
    }
}
