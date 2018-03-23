//
//  Resources.swift
//  BlackEuro
//
//  Created by Stanislav Cherkasov on 23.03.18.
//  Copyright © 2018 Stanislav Cherkasov. All rights reserved.
//

import Foundation

class Resources {
    public static let blackFlagPictures = {
        ["AndorraF", "AustriaF", "FranciaF", "GermanyF", "MonakoF", "PortugaliaF", "VatikanF"].map { String(describing: $0) }
    }
    
    public static let blackCoinPictures = {
        ["1c", "2c", "5c", "10c", "20c", "50c", "1e", "2e", "GermanyF"].map { String(describing: $0) }
    }
}
