//
//  Friend .swift
//  Let's Be Friends
//
//  Created by    wuniutian on 9/7/22.
//

import Foundation

struct Friend: Identifiable, Equatable, Codable {
    var id = UUID() 
    
    var name: String
    var age: Int
    var gender: String
    var favDoraChracter: String 
    var icon: String
    var slothImage: String 
    // var slothImage: String
    // 3 pics: name is sloth1, sloth2, sloth3 etc.
    // in the ContentView, inside the arrray friend, name the slothImage to every FRIEND, eg. name: "Benjamin"...... slothImage: "sloth1"
    // in the FriendDetailView, under Image, put it as "friend.slothImage"
    //and its settled 
    
    var attack: Double
    var defence: Double
    
    var types: [FriendType]
}
