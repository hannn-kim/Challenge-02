//
//  Guest.swift
//  Challenge02
//
//  Created by Han on 4/17/26.
//

import Foundation
import SwiftData

@Model
class Guests: Identifiable {
    var id = UUID()
    var guestName: String
    var guestProfileImage: String
    var guestClassTime: String
    var process: String
    
    init(id: UUID = UUID(), guestName: String, guestProfileImage: String, guestClassTime: String, process: String) {
        self.id = id
        self.guestName = guestName
        self.guestProfileImage = guestProfileImage
        self.guestClassTime = guestClassTime
        self.process = process
    }
}
