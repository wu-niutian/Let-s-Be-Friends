//
//  ContentView.swift
//  Let's Be Friends
//
//  Created by    wuniutian on 9/7/22.
//

import SwiftUI

struct ContentView: View {
    
    
    
    @State var friends = [
        Friend(name: "Benjamin", age: 58, gender: "Female", favDoraChracter: "Very Hot", icon:"flame", attack: 10, defence: 15),
        Friend(name: "Jack", age: 99, gender: "Unknown", favDoraChracter: "Beetles", icon: "music.quarternote.3", attack: 15, defence: 13),
        Friend(name: "Azarias", age: 29, gender: "Male", favDoraChracter: "Badminton", icon: "sportscourt", attack: 12, defence: 9),
        Friend(name: "Shaun", age: 1, gender: "Female", favDoraChracter: "Ronaldo SIUUUU", icon: "gamecontroller.fill", attack: 6, defence: 9)]
    
    var body: some View {
        NavigationView {
            List (0..<friends.count) { index in
                NavigationLink{ FriendDetailView(friend: $friends[index])
                    
                } label: {
                    HStack (alignment: .center){
                        Image(systemName: friends[index].icon)
                            .padding()
                        VStack (alignment: .leading){
                            Text(friends[index].name)
                                .bold()
                            Text(friends[index].favDoraChracter)
                            
                        }
                    }
                }
            }
            .navigationTitle("Friends")
        }
        
    }
    
    
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
