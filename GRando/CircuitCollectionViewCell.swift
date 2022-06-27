//
//  CircuitCollectionViewCell.swift
//  GRando
//
//  Created by galmamim on 27/06/2022.
//

import UIKit
class CircuitCollectionViewCell :UICollectionViewCell {
    
    @IBOutlet weak var circuitImageView : UIImageView!
    @IBOutlet weak var circuitDescription : UILabel!
    
    
    func setup(with circuit : Circuit) {
        circuitDescription.text = circuit.titre
    
    }
    var circuits = [
        ListItem(title: "Vercors", description: "description", image: "hiking"),
        ListItem(title: "vercors2", description: "description", image: "hiking"),
        ListItem(title: "vercors", description: "description", image: "hiking"),
        ListItem(title: "vercors", description: "description", image: "hiking"),
        ListItem(title: "vercors", description: "description", image: "hiking"),
        ListItem(title: "vercors", description: "description", image: "hiking"),
        ListItem(title: "vercors", description: "description", image: "hiking"),
        ListItem(title: "vercors", description: "description", image: "hiking")
    ]
}
