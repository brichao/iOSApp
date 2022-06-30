//
//  Circuit.swift
//  GRando
//
//  Created by galmamim on 01/06/2022.
//

import Foundation
import UIKit

struct Circuit{
    var titre: String
    var image: UIImage
    var description: String
    var duree: String
    var difficulte: String
    var distance :String
}

let Circuits: [Circuit] = [
    Circuit(titre:"Lac achard",image:#imageLiteral(resourceName: "Rando1.jpg"),description: "Lac très connu au dessus de la station de Chamrousse au cœur de la nature. Très accessible, il est facile de s’y rendre pour prendre un peu le frais lors des fortes chaleurs estivales.Randonnée de 2h-2h30 pour 6km et 250m de dénivelé, elle comblera tout le monde, qu’on soit seul ou en famille. Le départ de cette balade se situe près du télésiège de Bachat-Bouloud à Chamrousse,à 45 minutes de Grenoble.", duree: "2h-2h30", difficulte: "facile",distance: "6 Km"),
    Circuit(titre:"Croix de Pravouta",image:#imageLiteral(resourceName: "rando2.jpg"),description: "Magnifique petite randonnée en Chartreuse au départ du col du Coq. Pravouta avec ses1760 m d’altitude offre une très belle vue sur le massif de la Chartreuse, et plus précisément sur quelques-uns de ses sommets : la Dent de Crolles, Chamechaude, le Charmant Som ou encore le Grand Som. Il faut compter 2h environ pour 5 km et 300m de dénivelé.", duree: "2h00", difficulte: "Moyen",distance: "5 Km"),
    Circuit(titre:"Passerelles de Monteynard",image:#imageLiteral(resourceName: "rando3.jpg"),description: "Magnifique petite randonnée en Chartreuse au départ du col du Coq. Pravouta avec ses 1760 m d’altitude offre une très belle vue sur le massif de la Chartreuse, et plus précisément sur quelques-uns de ses sommets : la Dent de Crolles, Chamechaude, le Charmant Som ou encore le Grand Som. Il faut compter 2h environ pour 5 km et 300m de dénivelé.", duree: "4h30", difficulte: "Moyen", distance: "15 Km"),
    Circuit(titre:"Croix du pic Saint Michel",image:#imageLiteral(resourceName: "rando4.jpg"),description: "Quand on parle d’idée randonnées à Grenoble, comment ne pas citer le Col de l’Arc et le fameux Pic Saint-Michel. Très belle randonnée avec un panorama à couper souffleau sommet, ilfaudra compter environ 4h30 pour parcourir les 800m de dénivelé et les 10km. A seulement 30 minutes de Grenoble, il vous sera possible de surplomber le sud de Grenoble avec une vue sur le Vercors, la Chartreuse, et même la chaîne de Belledonne.", duree: "4h30", difficulte: "Difficile", distance: "10 Km")]

