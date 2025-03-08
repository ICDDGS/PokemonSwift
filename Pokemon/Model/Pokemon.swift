//
//  Pokemon.swift
//
//  Created by Daniel Cruz on 21/02/25.
//

import Foundation

struct Pokemon {
    let name: String
    let image: String
    
    init(dict: [String: String]) {
        self.name = dict["name"]!
        self.image = dict["image"]!
    }
}
