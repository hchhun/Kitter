//
//  UserInfoView.swift
//  Kitter
//
//  Created by Hoksolinda Chhun on 2025-01-12.
//

import SwiftUI

struct UserInfoView: View {
    let user: User
    
    var body: some View {
        VStack (alignment: .leading) {
            HStack {
                Text(user.fullname)
                    .font(.title)
                    .fontWeight(.heavy)
                
                Text("\(user.age)")
                    .font(.title)
                    .fontWeight(.semibold)
                
                Spacer()
                
                Button {
                    print("DEBUG: Show profile here...")
                } label: {
                    Image(systemName: "arrow.up.circle")
                        .fontWeight(.bold)
                        .imageScale(.large)
                }
            }
            
            Text("Text bio")
                .font(.subheadline)
                .lineLimit(2)
        }
        .foregroundStyle(.white)
        .padding(15)
        .background(
            LinearGradient(colors: [.clear, .black], startPoint: .top, endPoint: .bottom)
        )
    }
}

#Preview {
    UserInfoView(user: MockData.users[1])
}
