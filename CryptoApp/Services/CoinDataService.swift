//
//  CoinDataService.swift
//  CryptoApp
//
//  Created by Siran Li on 12/1/22.
//

import Foundation
import Combine

class CoinDataService {
    
    @Published var allCoins : [CoinModel] = []
    var coinSubscription : AnyCancellable?
    
    init() {
        getCoins()
    }
    
    func getCoins() {
        guard let url = URL(string: Constants.coinDataURLString.rawValue) else { return }
        
        coinSubscription = NetworkingManager.download(url: url)
            .decode(type: [CoinModel].self, decoder: JSONDecoder())
            .sink(receiveCompletion: NetworkingManager.handleCompletion, receiveValue: { [weak self] (returnedCoins) in
                self?.allCoins = returnedCoins
                self?.coinSubscription?.cancel()
            })
    }
}
