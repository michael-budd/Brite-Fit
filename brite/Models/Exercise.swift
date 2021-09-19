//
//  Exercise.swift
//  brite
//
//  Created by Michael Budd on 8/20/21.
//

import Foundation

struct Exercise {
    var name: String
    var repCount: Int
    var setCount: Int
    var modification: String = "None"
    
}

struct Routine {
    var exercises: [Exercise]
    
}
