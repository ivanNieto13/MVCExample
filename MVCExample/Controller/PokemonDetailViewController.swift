//
//  PokemonDetailViewController.swift
//  MVCExample
//
//  Created by IVAN NIETO on 27/08/22.
//

import UIKit

class PokemonDetailViewController: UIViewController,UICollectionViewDataSource, UICollectionViewDelegate {
    
    var receivedPokemon: Pokemon?
    
    @IBOutlet var PokemonDetailCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "pokeLabelCell", for: indexPath) as! PokeDetailCellCollectionViewCell
        cell.pokeNameLabel.text = receivedPokemon?.name
        cell.pokeImage.image = UIImage.init(named: receivedPokemon?.image ?? "0")
        cell.pokeMoveLabel.text = receivedPokemon?.move
        cell.pokeAbilityLabel.text = receivedPokemon?.ability
        cell.pokeWeightLabel.text = receivedPokemon?.weight
        return cell
    }
    
    
    
    

}
