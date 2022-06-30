//
//  ViewControllerListeCircuit.swift
//  GRando
//
//  Created by galmamim on 01/06/2022.
//

import UIKit

class ViewControllerListeCircuit: UIViewController, UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
    
    @IBOutlet weak var collectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self
        collectionView.delegate = self
              collectionView.collectionViewLayout = UICollectionViewFlowLayout()
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return Circuits.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
           let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CircuitCollectionViewCell", for: indexPath) as! CircuitCollectionViewCell
           cell.setup(with: Circuits[indexPath.row])
           return cell
       }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
           return CGSize(width: 400, height: 350)
       }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
           print(Circuits[indexPath.row].titre)
       }}

    
    
    

  
