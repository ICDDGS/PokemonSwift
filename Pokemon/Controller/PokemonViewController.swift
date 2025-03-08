//
//  PokemonViewController.swift
//  MVC
//
//  Created by Daniel Cruz on 21/02/25.
//

import UIKit

class PokemonViewController: UIViewController {

    let dataManager = PokemonDataManager()
    
    @IBOutlet weak var pokemonTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Color darkMode
        view.backgroundColor = UIColor(named: "darkModeColor")
        pokemonTable.backgroundColor = UIColor(named: "darkModeColor")

        
        pokemonTable.dataSource = self
        pokemonTable.delegate = self
        
        dataManager.fetch()
        print(dataManager.count())
    }
}

extension PokemonViewController : UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataManager.count()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "pokemonCell", for: indexPath) as! PokemonCell
        if let pokemon = dataManager.getPokemon(at: indexPath.row){
            cell.pokemonImage.image = UIImage(named: pokemon.image)
            cell.pokemonLabel.text = pokemon.name
            return cell
        }
        else{
            cell.pokemonImage.image = UIImage(named: "defaulImage")
            cell.pokemonLabel.text = "Default text"
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        return UIImageView(image: UIImage(named: "PokemonHeader"))
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let pokemon = dataManager.getPokemon(at: indexPath.row) else { return }
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let detailVC = storyboard.instantiateViewController(withIdentifier: "PokemonDetailViewController") as? PokemonDetailViewController {
            detailVC.pokemon = pokemon
            detailVC.modalPresentationStyle = .fullScreen
            present(detailVC, animated: true, completion: nil)
        }
    }

    
}
