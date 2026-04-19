//
//  FloatingButton.swift
//  Challenge02
//
//  Created by Han on 4/19/26.
//
import SwiftUI

struct FloatingButton: View {
    //화면 띄울지 말지 결정
    @State private var isShowingSheet = false
    
    var body: some View {
        Button(action: {
            isShowingSheet = true
        }) {
            HStack(spacing: 6) {
                Image(systemName: "plus")
                    .font(.headline)
                
                Text("게시글 작성")
                    .font(.headline)
            }
            .foregroundColor(.black)
            .padding(.vertical, 22)
            .padding(.horizontal, 20)
            .background(Color.brand)
            .cornerRadius(40)
        }
        .fullScreenCover(isPresented: $isShowingSheet) {
            PostCreateView()
        }
        .padding(.trailing, 24)
        .padding(.bottom, 18)
    }
}

#Preview {
    FloatingButton()
}
