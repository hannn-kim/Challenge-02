//
//  FixedHeaderView.swift
//  Challenge02
//
//  Created by Han on 4/19/26.
//

import SwiftUI

struct FixedHeaderView: View {
    var body: some View {
        ZStack(alignment: .bottom) {
            Color.white
                .ignoresSafeArea(edges: .top)
            
            VStack {
                
            }
            HStack {
                Button(action: {
                }) {
                    Image(systemName: "xmark")
                        .font(.title3)
                        .foregroundColor(.black)
                }
                .padding(.leading, 16)
                .padding(.bottom,4)
                
                Spacer()
            }
            
            Text("게시글 작성")
                .font(.title3)
                .bold()
        }
        .frame(height: 40)
        .padding(.bottom,20)
    }
}
#Preview {
    FixedHeaderView()
}
