//
//  FriendDetailView.swift
//  Let's Be Friends
//
//  Created by    wuniutian on 9/7/22.
//

import SwiftUI

let maxProfilePicSize = 250.0

struct FriendDetailView: View {
    
    @Binding var friend: Friend
    
    var body: some View {
        ScrollView {
            VStack(spacing: 0) {
                Image("Sloth")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 300)
                
                Image(friend.name)
                    .resizable()
                    .scaledToFit()
                    .frame(width: maxProfilePicSize, height: maxProfilePicSize)
                    .mask(Circle())
                    .overlay(
                        Circle()
                            .stroke(lineWidth: 8)
                            .foregroundColor(.white)
                    )
                    .offset(x: 0, y: -maxProfilePicSize / 8)
                    .shadow(radius: 6)
                    .padding(.bottom, -maxProfilePicSize / 2)
                
                HStack {
                    Image(systemName: "heart.fill")
                    Text("\(friend.gender)")
                }
                .font(.system(size: 24))
                .offset(y: 120)
                
                VStack(alignment: .leading) {
                    Text("Attack")
                    Slider(value: $friend.attack,
                           in: 0...15,
                           step: 1)
                    
                    
                    Text("Defence")
                    Slider(value: $friend.defence,
                           in: 0...15,
                           step: 1)
                }
                .padding()
                .offset(y: 150)
                
                
                
                Spacer()
            }
            .navigationTitle(friend.name)
        }
    }
}

struct FriendDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FriendDetailView(friend: .constant (Friend(name: "Benjamin", age: 59, gender: "Female", favDoraChracter: "Is Very Hot", icon: "Flame", attack: 10, defence: 15)))
    }
}
