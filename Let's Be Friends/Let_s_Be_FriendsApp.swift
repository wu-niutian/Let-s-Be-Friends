//
//  Let_s_Be_FriendsApp.swift
//  Let's Be Friends
//
//  Created by    wuniutian on 9/7/22.
//

import SwiftUI

@main
struct Let_s_Be_FriendsApp: App {
    
    @ObservedObject var friendsData = FriendData()
    @Environment(\.scenePhase) private var scenePhase
    
    var body: some Scene {
        WindowGroup {
            ContentView(friends: $friendsData.friends)
                .onAppear {
                    friendsData.load()
                }
                .onChange(of: scenePhase) { phase in
                    if phase == .inactive {
                        friendsData.save()
                        
                    }
                }
        }
    }
}
