//
//  FriendData.swift
//  Let's Be Friends
//
//  Created by    wuniutian on 15/7/22.
//

import Foundation

import SwiftUI

class FriendData: ObservableObject {
    @Published var friends: [Friend] = []
    
    let sampleFriends = [
        Friend(name: "Daniel", age: 14, gender: "Male", favDoraChracter: "Is Very Nice", icon: "heart.fill", slothImage: "Sloth", attack:                     10.0, defence: 10.0, types: [.ice]),
        Friend(name: "Ian", age: 13, gender: "Male", favDoraChracter: "Is Very Tall", icon: "flag.circle", slothImage: "Sloth", attack: 12.0, defence: 0.0, types: [.water, .ice]),
        Friend(name: "Faheem", age: 1, gender: "Male", favDoraChracter: "He Needs Rest", icon: "star.circle.fill", slothImage: "Sloth", attack: 12.0, defence: 3.0, types: [.fire])]
    
    
    func getArchiveURL() -> URL {
        let plistName = "friends.plist"
        let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
        
        return documentsDirectory.appendingPathComponent(plistName)
    }
    
    func save() {
        let archiveURL = getArchiveURL()
        let propertyListEncoder = PropertyListEncoder()
        let encodedFriends = try? propertyListEncoder.encode(friends)
        try? encodedFriends?.write(to: archiveURL, options: .noFileProtection)
        
    }
    
    func load() {
        let archiveURL = getArchiveURL()
        let propertyListDecoder = PropertyListDecoder()
        
        var finalFriends: [Friend]!
        
        if let retrievedFriendsData = try? Data(contentsOf: archiveURL),
           let decodedFriends = try? propertyListDecoder.decode(Array<Friend>.self, from: retrievedFriendsData) {
            finalFriends = decodedFriends
        } else {
            finalFriends = sampleFriends
        }
        
        friends = finalFriends
    }
    
}
