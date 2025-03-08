//
//  Pokemon.swift
//
//  Created by Daniel Cruz on 21/02/25.
//

struct Pokemon {
    let name: String
    let image: String
    let move: String
    let ability: String
    
    init(dict: [String: String]) {
        self.name = dict["name"] ?? "Unknown"
        self.image = dict["image"] ?? "defaultImage"
        self.move = dict["move"] ?? "Default Move"
        self.ability = dict["ability"] ?? "Default Ability"
    }
}

