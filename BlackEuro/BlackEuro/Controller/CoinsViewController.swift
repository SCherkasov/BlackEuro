//
//  CoinsViewController.swift
//  BlackEuro
//
//  Created by Stanislav Cherkasov on 23.03.18.
//  Copyright © 2018 Stanislav Cherkasov. All rights reserved.
//

import UIKit

enum Mode {
    case edit
    case view
}

class CoinsViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    

    @IBOutlet weak var coinsCollectionView: UICollectionView!
    
    var mode: Mode = .view {
        didSet {
            self.coinsCollectionView.reloadData()
        }
    }
    
    let blackCoinPictures = Resources.blackCoinPictures()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupLayoutCoinsCollectionView()
    }
    
    func setupLayoutCoinsCollectionView() {
        let itemSize = UIScreen.main.bounds.width / 3
        
        let layout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsetsMake(0, 0, 0, 0)
        layout.itemSize = CGSize(width: itemSize, height: itemSize)
        
        layout.minimumInteritemSpacing = 0
        layout.minimumLineSpacing = 0
        
        coinsCollectionView.collectionViewLayout = layout
    }
    
    func collectionView(
        _ collectionView: UICollectionView,
        numberOfItemsInSection section: Int) -> Int
    {
        return blackCoinPictures.count
    }
    
    func collectionView(
        _ collectionView: UICollectionView,
        cellForItemAt indexPath: IndexPath) -> UICollectionViewCell
    {
        let cell = (collectionView.dequeueReusableCell(
            withReuseIdentifier: String(describing: CoinsCollectionViewCell.self),
            for: indexPath) as? CoinsCollectionViewCell)
            .map { (coinCell) -> CoinsCollectionViewCell in
                coinCell.mode = self.mode
                coinCell.myCoinsImage.image = UIImage(named: blackCoinPictures[indexPath.row] + ".JPG")
                
                return coinCell
        }
        
        return cell ?? UICollectionViewCell.init()
    }
    
    @IBAction func editButton(_ sender: UIButton) {
        
        switch self.mode {
        case .edit:
            self.mode = .view
        case.view:
            self.mode = .edit
        }
    }
}

