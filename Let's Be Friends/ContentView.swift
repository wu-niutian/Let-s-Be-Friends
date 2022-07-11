//
//  ContentView.swift
//  Let's Be Friends
//
//  Created by    wuniutian on 9/7/22.
//

import SwiftUI

struct ContentView: View {
    
    
    
    @State var friends = [
        Friend(name: "Benjamin",
               age: 58,
               gender: "Female",
               favDoraChracter: "Very Hot",
               icon:"flame",
               slothImage: "Sloth", attack: 10,
               defence: 15,
               types: [.ice, .fire]),
        Friend(name: "Jack",
               age: 99,
               gender: "Unknown",
               favDoraChracter: "Beetles",
               icon: "music.quarternote.3",
               slothImage: "Sloth", attack: 15,
               defence: 13,
               types: [.electric, .grass]),
        Friend(name: "Azarias",
               age: 29,
               gender: "Male",
               favDoraChracter: "Badminton",
               icon: "sportscourt",
               slothImage: "Sloth", attack: 12,
               defence: 9,
               types: [.normal, .water]),
        Friend(name: "Shaun",
               age: 1,
               gender: "Female",
               favDoraChracter: "Ronaldo SIUUUU",
               icon: "gamecontroller.fill",
               slothImage: "Sloth", attack: 6,
               defence: 9,
               types: [.fire, .electric])
    ]
    
    @State var isSheetPresented = false
    
    var body: some View {
        NavigationView {
            List {
                ForEach(friends) { friend in
                    
                    let friendIndex = friends.firstIndex(of: friend)!
                    
                    NavigationLink{
                        FriendDetailView(friend: $friends[friendIndex])
                        
                    } label: {
                        HStack (alignment: .center){
                            Image(systemName: friend.icon)
                                .padding()
                            VStack (alignment: .leading){
                                Text(friend.name)
                                    .bold()
                                HStack {
                                    Text(friend.favDoraChracter)
                                    
                                    Spacer()
                                    
                                    ForEach(friend.types, id: \.rawValue) { type in
                                        Image(systemName: type.getSymbolName())
                                    }
                                }
                            }
                        }
                    }
                }
                .onDelete { offsets in
                    friends.remove(atOffsets: offsets)
                }
                .onMove { source, destination in
                    friends.move(fromOffsets: source, toOffset: destination)
                }
                
            }
            .navigationTitle("Friends")
            .navigationBarItems(leading: EditButton(),
                                trailing: Button {
                isSheetPresented = true
                
            } label: {
                Image(systemName: "plus")
            })
            .sheet(isPresented: $isSheetPresented) {
                FriendView(friends: $friends)}
            
        }

    }
    
        struct ContentView_Previews: PreviewProvider {
            static var previews: some View {
                ContentView()
            }
        }
}
