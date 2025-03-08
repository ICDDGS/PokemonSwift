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
        ["image":"0", "name": "Wartortle"],
        ["image":"1", "name": "Bulbasaur"],
        ["image":"2", "name": "Blastoise"],
        ["image":"3", "name":"Butterfree"],
        ["image":"4", "name":"Ivysaur"],
        ["image":"5", "name":"Jigglypuf"],
        ["image":"6", "name":"Charmander"],
        ["image":"7", "name":"Meowth"],
        ["image":"8", "name":"Alacazam"],
        ["image":"9", "name":"Pidgey"],
        ["image":"10", "name":"Raichu"],
        ["image":"11", "name":"Rattata"],
        ["image":"12", "name":"Vaporeon"],
        ["image":"13", "name":"Jynx"],
        ["image":"14", "name":"Venusaur"],
        ["image":"15", "name":"Linea"],
        ["image":"16", "name":"Slowbro"],
        ["image":"17", "name":"Dewgong"],
        ["image":"18", "name":"Spearow"],
        ["image":"19", "name":"Wigglytuff"],
        ["image":"20", "name":"Scyther"],
        ["image":"21", "name":"Golduk"],
        ["image":"22", "name":"Lapras"],
        ["image":"23", "name":"Sandshrew"]
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
