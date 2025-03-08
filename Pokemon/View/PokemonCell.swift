//
//  PokemonCell.swift
//  MVC
//
//  Created by Rafael Gonzalez on 22/02/25.
//

import UIKit

class PokemonCell: UITableViewCell {
    
    
    @IBOutlet weak var pokemonImage: UIImageView!
    
    @IBOutlet weak var pokemonLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        backgroundColor = UIColor(named: "darkModeColor")
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
