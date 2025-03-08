//
//  PokemonDataManager.swift
//
//  Created by Daniel Cruz on 21/02/25.
//

import Foundation

class PokemonDataManager {
    
    private var pokemons: [Pokemon] = []
    
    //data source array :P
    let pokemonsArray = [
        ["image":"0", "name": "Wartortle", "move": "Aqua Jet", "ability": "Torrent"],
        ["image":"1", "name": "Bulbasaur", "move": "Vine Whip", "ability": "Overgrow"],
        ["image":"2", "name": "Blastoise", "move": "Hydro Pump", "ability": "Torrent"],
        ["image":"3", "name":"Butterfree", "move": "Gust", "ability": "Compound Eyes"],
        ["image":"4", "name":"Ivysaur", "move": "Razor Leaf", "ability": "Overgrow"],
        ["image":"5", "name":"Jigglypuf", "move": "Sing", "ability": "Cute Charm"],
        ["image":"6", "name":"Charmander", "move": "Flamethrower", "ability": "Blaze"],
        ["image":"7", "name":"Meowth", "move": "Scratch", "ability": "Pickup"],
        ["image":"8", "name":"Alakazam", "move": "Psybeam", "ability": "Synchronize"],
        ["image":"9", "name":"Pidgey", "move": "Quick Attack", "ability": "Tangled Feet"],
        ["image":"10", "name":"Raichu", "move": "Thunderbolt", "ability": "Static"],
        ["image":"11", "name":"Rattata", "move": "Bite", "ability": "Run Away"],
        ["image":"12", "name":"Vaporeon", "move": "Water Gun", "ability": "Water Absorb"],
        ["image":"13", "name":"Jynx", "move": "Ice Punch", "ability": "Oblivious"],
        ["image":"14", "name":"Venusaur", "move": "Solar Beam", "ability": "Overgrow"],
        ["image":"15", "name":"Linea", "move": "Quick Attack", "ability": "Run Away"],
        ["image":"16", "name":"Slowbro", "move": "Surf", "ability": "Oblivious"],
        ["image":"17", "name":"Dewgong", "move": "Ice Beam", "ability": "Thick Fat"],
        ["image":"18", "name":"Spearow", "move": "Peck", "ability": "Keen Eye"],
        ["image":"19", "name":"Wigglytuff", "move": "Double Slap", "ability": "Cute Charm"],
        ["image":"20", "name":"Scyther", "move": "Wing Attack", "ability": "Technician"],
        ["image":"21", "name":"Golduck", "move": "Water Pulse", "ability": "Damp"],
        ["image":"22", "name":"Lapras", "move": "Ice Shard", "ability": "Water Absorb"],
        ["image":"23", "name":"Sandshrew", "move": "Scratch", "ability": "Sand Veil"]
    ]

    
    func fetch() {
        for pokemon in pokemonsArray {
            pokemons.append(Pokemon(dict: pokemon))
        }
    }
    
    func getPokemons() -> [Pokemon] {
        return pokemons
    }
    
    func getPokemon(at index: Int) -> Pokemon? {
        guard index >= 0 && index < pokemons.count else {
            return nil
        }
        return pokemons[index]
    }
    
    func count() -> Int {
        return pokemons.count
    }
    
}
