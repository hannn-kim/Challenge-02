//
//  DateAndTimePicker.swift
//  Challenge02
//
//  Created by Han on 4/19/26.
//
import SwiftUI

struct DateAndTimePicker: View {
    @Binding var selection: Date
    var onDone: () -> Void
    
    var body: some View {
        VStack(spacing: 0) {
            // 상단 핸들러
            Capsule()
                .fill(Color.secondary.opacity(0.3))
                .frame(width: 40, height: 5)
                .padding(.top, 12)
            
            // 헤더 영역
            HStack {
                Text("모임 일정")
                    .font(.system(size: 18, weight: .bold))
                Spacer()
                Button(action: onDone) {
                    Text("완료")
                        .font(.system(size: 16, weight: .semibold))
                        .foregroundColor(.blue)
                }
            }
            .padding()
                        
            DatePicker(
                "",
                selection: $selection,
                // 날짜와 시간을 모두 선택할 수 있도록 설정
                displayedComponents: [.date, .hourAndMinute]
            )
            .datePickerStyle(.wheel)
            .labelsHidden()
            .environment(\.locale, Locale(identifier: "ko_KR"))
            .padding()
        }
    }
}


#Preview {
    DateAndTimePicker(
        selection: .constant(Date()), // 현재 시간으로 고정된 바인딩 값
        onDone: {
            print("완료 버튼 클릭됨")
        }
    )
}
