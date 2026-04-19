//
//  PostCreate.swift
//  Challenge02
//
//  Created by Han on 4/19/26.
//

import SwiftUI

struct TextFieldComponent: View {
    @State var title: String = ""

    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                Text("제목")
                    .bold()
                
                TextField(
                    "제목을 입력해주세요.",
                    text: $title
                )
                .disableAutocorrection(true)
                .font(.callout)
                .padding(.vertical, 20)
                        .padding(.horizontal)
                        .background(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color.lineGray, lineWidth: 1))
            }
            .padding(.bottom,32)
        }
    }
}

#Preview {
    TextFieldComponent()
}
