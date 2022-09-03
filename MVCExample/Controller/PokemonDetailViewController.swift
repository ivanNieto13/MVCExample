//
//  PokemonDetailViewController.swift
//  MVCExample
//
//  Created by IVAN NIETO on 27/08/22.
//

import UIKit

class PokemonDetailViewController: UIViewController {

    var receivedPokemon: Pokemon?
    
    @IBOutlet var PokemonDetailCollectionView: UICollectionView!
    @IBOutlet var PokemonDetailImageCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("pokemon ->", receivedPokemon!)
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let labelCell = collectionView.dequeueReusableCell(withReuseIdentifier: "pokeDetailCell", for: indexPath) as! PokeDetailCellCollectionViewCell
        
        
        labelCell.pokeNameLabel.text = receivedPokemon?.name
        
        return labelCell
    }
    
    
    
    

}
