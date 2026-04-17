//
//  FilterBar.swift
//  Challenge02
//
//  Created by Han on 4/17/26.
//

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
    var filterOptions = ["전체","식사/술","운동","공부","엔터","여행"]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 8){
                ForEach(filterOptions, id: \.self) { name in
                    Filter(
                        filterName: name,
                        isSelected: selectedFilter == name,
                        action: {
                            selectedFilter = name
                        }
                    )
                 }
            }
            .padding(.horizontal,20)
        }
    }
}

#Preview {
    FilterBar()
}
