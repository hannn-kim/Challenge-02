//
//  CategoryComponent.swift
//  Challenge02
//
//  Created by Han on 4/19/26.
//

import SwiftUI

struct CategoryComponent: View {
    var filterName: String = ""
    var isSelected: Bool
    var action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(filterName)
                .font(.body)
                .padding(.horizontal,18)
                .padding(.vertical,12)
                .foregroundStyle(isSelected ? Color.white: Color.black)
                .background(isSelected ? Color("FilterBlack"): Color("FilterGray"))
                .cornerRadius(40)
        }
    }
}

//필터바 UI
struct CategoryComponentBar: View {
    @Binding var selectedCategories: [String]
    
    var filterOptions = ["식사/술", "운동", "공부", "오락/엔터", "여행"]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("모임 카테고리 선택")
                .bold()
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 8) {
                    //버튼 5개 찍어내는 코드
                    ForEach(filterOptions, id: \.self) { name in
                        CategoryComponent(
                            filterName: name,
                            isSelected: selectedCategories.contains(name),
                            //선택된 카테고리 관리(누르면 선택되고, 다시 누르면 취소되는거)
                            action: {
                                //이미 추가된 이름인지 확인하고, 추가된 상태면 삭제시킨다. ($0 -> 현재 선택된 버튼을 의미함)
                                if selectedCategories.contains(name) {
                                    selectedCategories.removeAll{$0 == name}
                                } else {
                                    //만약 추가되어있지 않으면, 추가시킨다. (append가 추가하는거임)
                                    selectedCategories.append(name)
                                }
                            }
                        )
                    }
                }
            }
        }
        .padding(.bottom, 36)
    }
}

#Preview {
    CategoryComponentBar(selectedCategories: .constant(["운동"]))
}
