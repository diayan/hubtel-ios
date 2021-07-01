//
//  Option.swift
//  Hubtel-iOS
//
//  Created by diayan siat on 01/07/2021.
//

import UIKit


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
