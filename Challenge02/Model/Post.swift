//
//  PostStore.swift
//  Challenge02
//
//  Created by Han on 4/20/26.
//
import Foundation
import SwiftData

@Model
class Post {
    var title: String
    var selectedCategories: [String] // 다중 선택 때문에 배열로 데이터 타입 지정
    var content: String
    var location: String
    var selectedDate: Date
    var maxParticipants: Int
    
    init(
        title: String = "",
        selectedCategories: [String] = [],
        content: String = "",
        location: String = "",
        selectedDate: Date = .now,
        maxParticipants: Int = 2
    ) {
        self.title = title
        self.selectedCategories = selectedCategories
        self.content = content
        self.location = location
        self.selectedDate = selectedDate
        self.maxParticipants = maxParticipants
    }
}

//더미데이터 영역
//static으로 해서 샘플 데이터 배열을 만드는것임 (더미데이터 페이지 따로 생성하고 데이터를 여기에 주입!)
