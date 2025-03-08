//
//  PokemonDetailViewController.swift
//  Pokemon
//
//  Created by Alejandro on 07/03/25.
//

import UIKit

import UIKit

class PokemonDetailViewController: UIViewController {

    var pokemon: Pokemon?

    @IBOutlet weak var pokemonImageView: UIImageView!
    @IBOutlet weak var pokemonNameLabel: UILabel!
    @IBOutlet weak var pokemonMoveLabel: UILabel!
    @IBOutlet weak var pokemonAbilityLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let pokemon = pokemon {
            pokemonImageView.image = UIImage(named: pokemon.image)
            pokemonNameLabel.text = pokemon.name
            pokemonMoveLabel.text = "Movimiento: \(pokemon.move)"
            pokemonAbilityLabel.text = "Habilidad: \(pokemon.ability)"
        }
    }

    
    @IBAction func closeButtonTapped(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}

