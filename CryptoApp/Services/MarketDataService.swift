//
//  MarketDataService.swift
//  CryptoApp
//
//  Created by Siran Li on 2/2/23.
//

import Foundation
import Combine

class MarketDataService {
    
    @Published var marketData : MarketDataModel? = nil
    var marketDataSubscription : AnyCancellable?
    
    init() {
        getData()
    }
    
    func getData() {
        guard let url = URL(string: Constants.marketDataURLString.rawValue ) else { return }
        
        marketDataSubscription = NetworkingManager.download(url: url)
            .decode(type: GlobalData.self, decoder: JSONDecoder())
            .sink(receiveCompletion: NetworkingManager.handleCompletion, receiveValue: { [weak self] (returnedGlobalData) in
                self?.marketData = returnedGlobalData.data
                self?.marketDataSubscription?.cancel()
            })
    }
}
