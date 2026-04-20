//
//  LocationSelectView.swift
//  Challenge02
//
//  Created by Han on 4/19/26.
//

import SwiftUI

struct LocationSelectView: View {
    @Binding var location: String

    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                Text("모임 장소")
                    .bold()
                
                TextField(
                    "장소를 입력해주세요.",
                    text: $location
                )
                .disableAutocorrection(true)
                .font(.callout)
                .padding(.vertical, 20)
                        .padding(.horizontal)
                        .background(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color.lineGray, lineWidth: 1))
            }
        }
        .padding(.bottom,36)
    }
}

#Preview {
    LocationSelectView(location: .constant(""))
}
