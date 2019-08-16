//
//  CurrencyItem.swift
//  CurrencyConverterCalculator
//
//  Created by Mustafa Ozhan on 08/08/2019.
//  Copyright © 2019 Mustafa Ozhan. All rights reserved.
//

import Foundation

struct CurrencyItem: Hashable {
    var value: String
    var name: String
    var symbol: String
    var shortCode: Currencies
    var imageName: String
    var isActive: Bool
}
