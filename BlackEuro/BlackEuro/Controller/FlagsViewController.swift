//
//  FlagsViewController.swift
//  BlackEuro
//
//  Created by Stanislav Cherkasov on 23.03.18.
//  Copyright © 2018 Stanislav Cherkasov. All rights reserved.
//

import UIKit

class FlagsViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    @IBOutlet weak var flagsCollectionView: UICollectionView!
    
    let blackFlagPictures = Resources.blackFlagPictures()
    let blackFlagLabels = Resources.blackFlagLabels
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupLayoutToCollectionView()
    }
    
    func setupLayoutToCollectionView() {
        let itemSize = UIScreen.main.bounds.width / 3
        
        let layout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsetsMake(0, 0, 0, 0)
        layout.itemSize = CGSize(width: itemSize, height: itemSize)
        
        layout.minimumInteritemSpacing = 0
        layout.minimumLineSpacing = 0
        
        flagsCollectionView.collectionViewLayout = layout
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return blackFlagPictures.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! FlagsCollectionViewCell
        cell.myFlagsImage.image = UIImage(named: blackFlagPictures[indexPath.row] + ".JPG")
        cell.flagNameLabel.text = blackFlagLabels()[indexPath.row]
        
        return cell
    }
}
