//
//  YearCoinsViewController.swift
//  BlackEuro
//
//  Created by Stanislav Cherkasov on 24.03.18.
//  Copyright © 2018 Stanislav Cherkasov. All rights reserved.
//

import UIKit

class YearCoinsViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    @IBOutlet weak var yearCoinCollectionView: UICollectionView!
    
    let blackYearCoinPictures = Resources.blackYearCoinPictures()
    let blackYearCoinLabels = Resources.blackYearCoinLabels()
    
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
        
        yearCoinCollectionView.collectionViewLayout = layout
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return blackYearCoinPictures.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell2", for: indexPath) as! YearCoinsCollectionViewCell
        cell.myYearCoinsImage.image = UIImage(named: blackYearCoinPictures[indexPath.row] + ".JPG")
        cell.yearCoinNameLabel.text = blackYearCoinLabels[indexPath.row]
        
        return cell
    }
}
