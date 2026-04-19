//
//  PostCreateView.swift
//  Challenge02
//
//  Created by Han on 4/19/26.
//

import SwiftUI

struct PostCreateView: View {
    var body: some View {
        //상단 페이지 타이틀 컴포넌트
        FixedHeaderView()
        
        ScrollView(.vertical, showsIndicators: false) {
            VStack {
                //제목 컴포넌트
                TextFieldComponent()
                //카테고리 선택 컴포넌트
                CategoryComponentBar()
                //모임설명 컴포넌트
                TextEditorComponent()
                //장소입력 컴포넌트
                LocationSelectView()
                //모임일정 컴포넌트
                DateAndTimeComponent()
                //모집인원 컴포넌트
                GatheringSizeComponent()
            }
            .padding(.horizontal)
            
        }
        .padding(.top,12)
        
        LargeButton(title: "작성완료", action: { print("작성완료!") })
    }
}

#Preview {
    PostCreateView()
}
