//
//  PostCreateView.swift
//  Challenge02
//
//  Created by Han on 4/19/26.
//
import SwiftUI

struct PostCreateView: View {
    //화면을 닫아서 이전 화면으로 돌아가게 만드는 코드
    @Environment(\.dismiss) var dismiss
    //입력된 데이터를 임시저장할 변수
    @State private var title: String = ""
    @State private var selectedCategories: [String] = [] // 다중 선택용 배열
    @State private var content: String = ""
    @State private var location: String = ""
    @State private var selectedDate: Date = .now
    @State private var maxParticipants: Int = 2
    
    var body: some View {
        VStack(spacing: 0) {
            ZStack {
                Text("게시글 쓰기")
                    .font(.title3)
                    .bold()
                
                HStack {
                    Button(action: {
                        dismiss()
                    }) {
                        Image(systemName: "xmark")
                            .foregroundColor(.black)
                            .font(.title2)
                    }
                    // 나머지 공간을 다 밀어내서 X 버튼을 왼쪽에 고정
                    Spacer()
                }
            }
            .padding()
            
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    //제목 컴포넌트
                    TextFieldComponent(title: .constant(""))
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
            .padding(.top, 12)
            
            // "작성완료" 버튼
            LargeButton(title: "작성완료", action: {
                print("작성완료!")
                dismiss()
            })
            .padding(.bottom, 10)
        }
    }
}

#Preview {
    PostCreateView()
}
