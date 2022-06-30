//
//  CircuitCollectionViewCell.swift
//  GRando
//
//  Created by galmamim on 30/06/2022.
//

import UIKit

class CircuitCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var circuitImageView: UIImageView!
    
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var descriptionLbl: UILabel!
    @IBOutlet weak var dureeLbl: UILabel!
    @IBOutlet weak var difficulteLbl: UILabel!
    func setup(with circuit: Circuit) {
        circuitImageView.image = circuit.image
        titleLbl.text = circuit.titre
        descriptionLbl.text = circuit.description
        dureeLbl.text = circuit.duree
        difficulteLbl.text = circuit.difficulte
    }}
