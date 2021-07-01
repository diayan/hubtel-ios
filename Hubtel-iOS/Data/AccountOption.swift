//
//  AccountOption.swift
//  Hubtel-iOS
//
//  Created by Elikem-OZE on 01/07/2021.
//

import Foundation
import UIKit

enum AccountOption: String, CaseIterable {

    case wallets = "Wallets"
    case summary = "Transaction Summary"
    case receipts = "Receipts"
    case inbox = "Inbox"
    case deliveryAddress = "Delivery Addresses"
    case coupons = "Coupons"
    
    case help = "Get Help"
    case rateUS = "Rate Us"
    case settings = "Settings"
    
    case sell = "Sell with Hubtel"

}


struct Option {

    var accountOption: AccountOption = .wallets
    var accountOptionImage: UIImage? {
        switch accountOption {
        case .wallets:
            return UIImage(systemName: "wallet.pass")
        case .summary:
            return UIImage(systemName: "chart.pie.fill")
        case .receipts:
            return UIImage(systemName: "clock.fill")
        case .inbox:
            return UIImage(systemName: "clock.fill")
        case .deliveryAddress:
            return UIImage(systemName: "tray.and.arrow.down.fill")
        case .coupons:
            return UIImage(systemName: "ticket.fill")
        case .help:
            return UIImage(systemName: "questionmark")
        case .rateUS:
            return UIImage(systemName: "hand.thumbsup.fill")
        case .settings:
            return UIImage(systemName: "gearshape.fill")
        case .sell:
            return UIImage(systemName: "dollarsign.circle.fill")
        }
    }

}

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

    init() {
        allSections = [
            section1,
            section2,
            section3
        ]
    }

}
