//
//  CalculatorSEED.swift
//  CurrencyConverterCalculator
//
//  Created by Mustafa Ozhan on 11/08/2020.
//  Copyright © 2020 Mustafa Ozhan. All rights reserved.
//

import Foundation

// MARK: State
struct CalculatorState {
    var input = ""
    var currencyList = [Currency]()
    var isLoading = false
    var baseCurrency = CurrencyType.NULL
    var isBarDialogShown = false
}

// MARK: Event
protocol CalculatorEvent {
}

// MARK: Effect
enum CalculatorEffect {
    case changeBaseCurrency(CurrencyType)
    case closeDiaog
}

// MARK: Data
struct CalculatorData {
    let coreDataRepository = CoreDataRepository.shared
    let apiRepository = ApiRepository()
    let userDefaultRepository = UserDefaultsRepository()
    var rates: Rates?
    var output = ""
}