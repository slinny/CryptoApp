//
//  Constants.swift
//  CryptoApp
//
//  Created by Siran Li on 8/21/24.
//

import Foundation

enum Constants: String {
    case coingeckoURLString = "https://www.coingecko.com"
    case coinDataURLString = "https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=250&page=1&sparkline=true&price_change_percentage=24h"
    case marketDataURLString = "https://api.coingecko.com/api/v3/global"
    static func coinDetailURLString(for coinID: String) -> String {
        return "https://api.coingecko.com/api/v3/coins/\(coinID)?localization=false&tickers=false&market_data=false&community_data=false&developer_data=false&sparkline=false"
    }
}
