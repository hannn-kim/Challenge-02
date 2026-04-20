//
//  GatheringSizeComponent.swift
//  Challenge02
//
//  Created by Han on 4/19/26.
//

import SwiftUI

struct GatheringSizeComponent: View {
    @Binding var inputCount: Int?
    @FocusState var focus
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("모임 정원")
                .bold()
            
            HStack(spacing: 12) {
                Image(systemName: "person")
                    .font(.title3)
                
                // 숫자 입력받는 TextField(단, 키보드 타입을 numberPad로 받음)
                TextField("모임 정원을 입력해주세요.", value: $inputCount, format: .number)
                    .font(.callout)
                    .keyboardType(.numberPad)
                    .focused($focus)
                    .overlay {
                        HStack {
                            if let inputCount {
                                Text("\(inputCount)")
                                    .font(.callout)
                                    .opacity(0)
                                Text("명")
                            }
                            Spacer()
                        }
                        .opacity(focus ? 0 : 1)
                    }
            }
            .padding()
            .frame(height: 56)
            .background(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(Color.lineGray, lineWidth: 1)
            )
        }
        .padding(.bottom, 36)
    }
}


#Preview {
    @Previewable @State var inputCount: Int? = nil
    GatheringSizeComponent(inputCount: $inputCount)
}
