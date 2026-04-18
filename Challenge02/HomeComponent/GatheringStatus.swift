//
//  GatheringStatus.swift
//  Challenge02
//
//  Created by Han on 4/17/26.
//

import SwiftUI

//모집상태태그(참여가능 or 대기있음)
struct GatheringStatus: View {
    @State var status: Bool
    
    var body: some View {
        let statusText = status ? "참여가능" : "대기있음"
        let statusColor = status ? Color.green : Color.orange
        
        Text(statusText)
            .font(.callout)
            .fontWeight(.medium)
            .foregroundColor(statusColor)
            .padding(.horizontal, 8)
            .padding(.vertical, 4)
            .foregroundStyle(.green)
            .background(
                RoundedRectangle(cornerRadius: 4)
                    .fill(statusColor.opacity(0.15))
            )
            .padding(.bottom, 8)
    }
}

#Preview {
    GatheringStatus(status: true)
}
