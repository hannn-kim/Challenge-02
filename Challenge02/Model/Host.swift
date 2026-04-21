//
//  Host.swift
//  Challenge02
//
//  Created by Han on 4/17/26.
//

import Foundation
import SwiftData

@Model
class Host: Identifiable {
    var id: UUID
    var name: String
    var hostProfileImage: String
    
    init(id: UUID = UUID(), name: String, hostProfileImage: String) {
        self.id = id
        self.name = name
        self.hostProfileImage = hostProfileImage
    }
}
