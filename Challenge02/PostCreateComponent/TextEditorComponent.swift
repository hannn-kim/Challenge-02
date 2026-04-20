//
//  TextEditorComponent.swift
//  Challenge02
//
//  Created by Han on 4/19/26.
//

import SwiftUI

struct TextEditorComponent: View {
    @Binding var description: String

    var body: some View {
        VStack(alignment: .leading) {
            Text("모임 설명")
                .bold()
            
            ZStack(alignment: .topLeading) {
                
                TextEditor(text: $description)
                    .frame(height: 150)
                    .padding(.horizontal, 12)
                    .padding(.vertical, 8)
                    .scrollContentBackground(.hidden)
                
                if description.isEmpty {
                    Text("모임에 대한 간략한 설명을 작성해주세요.")
                        .foregroundColor(Color(uiColor: .placeholderText))
                        .font(.callout)
                        .foregroundColor(.gray)
                        .padding(.horizontal, 16)
                        .padding(.vertical, 16)
                        .allowsHitTesting(false)
                }
            }
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(Color.lineGray, lineWidth: 1)
            )
        }
        .padding(.bottom,36)
    }
}

#Preview {
    TextEditorComponent(description: .constant("하이~"))
}
