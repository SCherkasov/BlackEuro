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
    
    public static let blackFlagLabels = {
        ["Andorra", "Austria", "Francia", "Germany", "Monako", "Portugalia", "Vatikan"].map { String(describing: $0) }
    }
    
    public static let blackCoinPictures = {
        ["1c", "2c", "5c", "10c", "20c", "50c", "1e", "2e", "GermanyF"].map { String(describing: $0) }
    }
    
    public static let blackCoinLabels = {
        ["1 cent", "2 cent", "5 cent", "10 cent", "20 cent", "50 cent", "1 euro", "2 euro", "Germany"].map { String(describing: $0) }
    }
}
