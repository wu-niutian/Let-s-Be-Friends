//
//  ContentView.swift
//  Let's Be Friends
//
//  Created by    wuniutian on 9/7/22.
//

import SwiftUI

var friends = [
    Friend(name: "Benjamin", age: 58, gender: "Female", favDoraChracter: "Very Hot", icon:"flame"),
    Friend(name: "Jack", age: 99, gender: "Unknown", favDoraChracter: "Beetles", icon: "music.quarternote.3"),
    Friend(name: "Azarias", age: 29, gender: "Male", favDoraChracter: "Badminton", icon: "sportscourt"),
    Friend(name: "Shaun", age: 1, gender: "Female", favDoraChracter: "Ronaldo SIUUUU", icon: "gamecontroller.fill")
]

struct ContentView: View {
    var body: some View {
        NavigationView {
            List(friends) { friend in
                HStack (alignment: .center){
                    Image(systemName: friend.icon)
                        .padding()
                    VStack (alignment: .leading){
                        Text(friend.name)
                            .bold()
                        Text(friend.favDoraChracter)
                    }
                }
                
            }
            .navigationTitle("Friends")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
