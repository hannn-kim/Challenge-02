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
    @State private var selectedFilters: Set<String> = Set<String>()
    var filterOptions = ["식사/술", "운동", "공부", "오락/엔터", "여행"]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("모임 카테고리 선택")
                .bold()
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 8) {
                    ForEach(filterOptions, id: \.self) { name in
                        CategoryComponent(
                            filterName: name,
                            isSelected: selectedFilters.contains(name),
                            action: {
                                if selectedFilters.contains(name) {
                                    selectedFilters.remove(name)
                                } else {
                                    selectedFilters.insert(name)
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
    CategoryComponentBar()
}
