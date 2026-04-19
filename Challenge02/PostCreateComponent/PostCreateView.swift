//
//  PostCreateView.swift
//  Challenge02
//
//  Created by Han on 4/19/26.
//

import SwiftUI

struct PostCreateView: View {
    var body: some View {
        FixedHeaderView()
        
        ScrollView(.vertical, showsIndicators: false) {
            VStack {
                //제목 컴포넌트
                TextFieldComponent()
                //모임설명 컴포넌트
                TextEditorComponent()
                //장소입력 컴포넌트
                LocationSelectView()
                //모임일정 컴포넌트
                SelectionButton(icon: "calendar.badge.clock", title: "모임 일정",actionDescription: "모임 날짜와 시간을 선택해주세요.", isPlaceholder: true, action: { print("버튼 클릭됨!")})
                //모집인원 컴포넌트
                SelectionButton(icon: "person", title: "모임 정원", actionDescription: "모임 정원을 선택해주세요.", isPlaceholder: true, action: { print("버튼 클릭됨!")})
            }
            .padding(.horizontal)
            
        }
        .padding(.top,12)
    }
}

#Preview {
    PostCreateView()
}
