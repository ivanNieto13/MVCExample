//
//  PokemonDetailViewController.swift
//  MVCExample
//
//  Created by IVAN NIETO on 27/08/22.
//

import UIKit

class PokemonDetailViewController: UIViewController {

    var receivedPokemon: Pokemon?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("pokemon ->", receivedPokemon!)
    }
    
    

}
