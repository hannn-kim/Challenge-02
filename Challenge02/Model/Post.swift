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
    var categories: [String] // 다중 선택 때문에 배열로 데이터 타입 지정
    var content: String
    var location: String
    var date: Date
    var maxParticipants: Int
    
    init(
        title: String = "",
        categories: [String] = [],
        content: String = "",
        location: String = "",
        date: Date = .now,
        maxParticipants: Int = 2
    ) {
        self.title = title
        self.categories = categories
        self.content = content
        self.location = location
        self.date = date
        self.maxParticipants = maxParticipants
    }
}

//더미데이터 영역
//static으로 해서 샘플 데이터 배열을 만드는것임 (더미데이터 페이지 따로 생성하고 데이터를 여기에 주입!)
