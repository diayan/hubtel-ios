//
//  AccountOptionViewModel.swift
//  Hubtel-iOS
//
//  Created by diayan siat on 01/07/2021.
//

import UIKit

struct AccountOptionViewModel {

    var section1: [Option] = [
        Option(accountOption: .wallets),
        Option(accountOption: .summary),
        Option(accountOption: .receipts),
        Option(accountOption: .inbox),
        Option(accountOption: .deliveryAddress),
    ]
    var section2: [Option] = [
        Option(accountOption: .help),
        Option(accountOption: .rateUS),
        Option(accountOption: .settings),
    ]
    
    var section3: [Option] = [
        Option(accountOption: .sell)
    ]

    var allSections: [[Option]] =  [[Option]]()

    //you cannot assign a var to a property in a struct/class
    init() {
        allSections = [
            section1,
            section2,
            section3
        ]
    }

}
