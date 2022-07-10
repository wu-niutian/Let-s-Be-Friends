//
//  Friend .swift
//  Let's Be Friends
//
//  Created by    wuniutian on 9/7/22.
//

import Foundation

struct Friend: Identifiable {
    var id = UUID() 
    
    var name: String
    var age: Int
    var gender: String
    var favDoraChracter: String 
    var icon: String
    
    var attack: Double
    var defence: Double
}
