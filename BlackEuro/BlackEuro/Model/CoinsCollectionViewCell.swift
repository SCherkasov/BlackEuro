//
//  CoinsCollectionViewCell.swift
//  BlackEuro
//
//  Created by Stanislav Cherkasov on 23.03.18.
//  Copyright © 2018 Stanislav Cherkasov. All rights reserved.
//

import UIKit

class CoinsCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var coinsDetailButton: UIButton!
    @IBOutlet weak var myCoinsImage: UIImageView!
    @IBOutlet weak var coinNameLabel: UILabel!
    
    public var mode: Mode = .view {
        didSet {
            switch self.mode {
            case .edit:
                self.coinsDetailButton.isHidden = false
            case .view:
                self.coinsDetailButton.isHidden = true
            }
        }
    }
}
