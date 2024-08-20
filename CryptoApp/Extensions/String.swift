//
//  String.swift
//  CryptoApp
//
//  Created by Siran Li on 8/20/24.
//

import Foundation

extension String {
    var removingHTMLOccurances: String {
        return self.replacingOccurrences(of: "<[^>]+>", with: "", options: .regularExpression, range: nil)
    }
}
