//
//  Resources.swift
//  BlackEuro
//
//  Created by Stanislav Cherkasov on 23.03.18.
//  Copyright © 2018 Stanislav Cherkasov. All rights reserved.
//

import Foundation

class Resources {
    
    // Flags
    public static let blackFlagPictures = {
        ["AndorraF", "AustriaF", "FranciaF", "GermanyF", "MonakoF", "PortugaliaF", "VatikanF"].map { String(describing: $0) }
    }
    
    public static let blackFlagLabels = {
        ["Andorra", "Austria", "Francia", "Germany", "Monako", "Portugalia", "Vatikan"].map { String(describing: $0) }
    }
    
    // Coins
    public static let blackCoinPictures = {
        ["1c", "2c", "5c", "10c", "20c", "50c", "1e", "2e", "GermanyF"].map { String(describing: $0) }
    }
    
    public static let blackCoinLabels = {
        ["1 cent", "2 cent", "5 cent", "10 cent", "20 cent", "50 cent", "1 euro", "2 euro", "Germany"].map { String(describing: $0) }
    }
    
    // Year coins
    public static let blackYearCoinPictures = {
        ["1e", "1e", "1e", "1e", "1e", "1e", "1e", "1e", "1e", "1e", "1e", "1e", "1e", "1e", "1e", "1e", "1e", "1e", "1e", "1e"].map { String(describing: $0) }
    }
    
    public static let blackYearCoinLabels = {
        ["1999", "2000", "2001", "2002", "2003", "2004", "2005", "2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014", "2015", "2016", "2017", "2018"].map { String(describing: $0) }
    }
}


