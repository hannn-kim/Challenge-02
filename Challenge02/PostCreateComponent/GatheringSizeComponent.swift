//
//  GatheringSizeComponent.swift
//  Challenge02
//
//  Created by Han on 4/19/26.
//

import SwiftUI

struct GatheringSizeComponent: View {
    //숫자를 직접 담을 변수 생성(값이 비어있는 상태에서 시작해야하니 옵셔널을 줌)
    @State private var inputCount: Int? = nil
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("모임 정원")
                .bold()
            
            HStack(spacing: 12) {
                Image(systemName: "person")
                    .font(.title3)
                    .foregroundStyle(inputCount == nil ? .textGray : .black)
                
                // 숫자 입력받는 TextField(단, 키보드 타입을 numberPad로 받음)
                TextField("모임 정원을 입력해주세요.", value: $inputCount, format: .number)
                    .font(.callout)
                    .keyboardType(.numberPad)
                
                if inputCount != nil {
                    Text("명")
                        .font(.callout)
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
    GatheringSizeComponent()
}
