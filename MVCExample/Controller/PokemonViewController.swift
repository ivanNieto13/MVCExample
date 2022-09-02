//
//  PokemonViewController.swift
//  MVCExample
//
//  Created by IVAN NIETO on 27/08/22.
//

import UIKit

class PokemonViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    let manager = PokemonDataManager()
    var selectedPokemon: Pokemon?
    
    @IBOutlet var PokemonCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        manager.fetch()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return manager.totalPokemons()
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "pokeCell", for: indexPath) as! PokeCell
        let pokemon = manager.getPokemonByIndex(pokemonIndex: indexPath.row)
        cell.pokeImageView.image = UIImage.init(named: pokemon.image)
        cell.pokeLabel.text = pokemon.name
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        selectedPokemon = manager.getPokemonByIndex(pokemonIndex: indexPath.row)
        self.performSegue(withIdentifier: "PokemonDetailSegue", sender: Self.self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = segue.destination as! PokemonDetailViewController
        destination.receivedPokemon = selectedPokemon
    }
    

}
