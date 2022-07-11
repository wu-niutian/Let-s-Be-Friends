//
//  FriendView.swift
//  Let's Be Friends
//
//  Created by    wuniutian on 10/7/22.
//

import SwiftUI

struct FriendView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    @Binding var friends: [Friend]
    
    @State var friend = Friend(name: "", age: 58, gender: "", favDoraChracter: "", icon: "", slothImage: "", attack: 0, defence: 0, types: [.normal])
    
    
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("INFORMATION")){
                    TextField("Name", text: $friend.name)
                    TextField("Gender", text: $friend.gender)
                }
                
                HStack{
                    Image(systemName: friend.icon)
                    TextField("Icon", text: $friend.icon)
                        .autocapitalization(.none)
                    
                    
                }
                
                TextField("Sloth", text: $friend.slothImage)
                
                
                Section(header: Text("Attributes")) {
                    Picker("Type", selection: $friend.types[0]) {
                        Text("normal")
                            .tag(FriendType.normal)
                        Text("fire")
                            .tag(FriendType.fire)
                        Text("water")
                            .tag(FriendType.water)
                        Text("grass")
                            .tag(FriendType.grass)
                        Text("electric")
                            .tag(FriendType.electric)
                        Text("ice")
                            .tag(FriendType.ice)
                    }
                }
                
                HStack {
                    Text("Attack")
                        .frame(width: 100, alignment: .leading)
                    
                    Slider(value: $friend.attack,
                           in: 0...15,
                           step: 1)
                }
                
                HStack {
                    Text("Defence")
                        .frame(width: 100, alignment: .leading)
                    
                    Slider(value: $friend.defence,
                           in: 0...15,
                           step: 1)
                }
                
                Section{
                    Button("Save") {
                        friends.append(friend)
                        presentationMode.wrappedValue.dismiss()
                        
                    }
                    Button("Dump This Friend"){
                        presentationMode.wrappedValue.dismiss()
                        
                    }
                    .foregroundColor(.red)
                    
                    
                }
                
                .navigationTitle("New Friends")
            }
        }
    }
    
    
    struct FriendView_Previews: PreviewProvider {
        static var previews: some View {
            FriendView(friends: .constant([]))
        }
    }
    
}
//A Form is a container for grouping controls (like TextFields, Toggles, Sliders & Pickers) used for data entry. A notable example of a Form is the Settings app where Forms are used for data entry

