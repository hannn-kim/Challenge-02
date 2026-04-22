//
//  FilterBar.swift
//  Challenge02
//
//  Created by Han on 4/17/26.
import SwiftUI

//필터버튼
struct Filter: View {
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
struct FilterBar: View {
    @State private var selectedFilter: String = "전체"
    var filterOptions = ["전체","식사/술","운동","공부","오락/엔터","여행"]
    @Binding var selectedCategories: [String]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 8){
                ForEach(filterOptions, id: \.self) { name in
                    Filter(
                        filterName: name,
                        // 1. 선택 상태 로직: '전체'거나, 내 이름이 선택된 카테고리에 유일하게 들어있을 때
                        isSelected: (name == "전체" && selectedCategories.isEmpty) || selectedCategories.first == name,
                        action: {
                            if name == "전체" {
                                selectedCategories.removeAll() // 전체 누르면 필터 초기화
                            } else {
                                // 하나만 선택되게 하려면 배열을 비우고 새로 담으면 됩니다!
                                selectedCategories = [name]
                            }
                        }
                    )
                }
            }
            .padding(.horizontal,20)
        }
    }
}

//#Preview {
//    FilterBar()
//}
