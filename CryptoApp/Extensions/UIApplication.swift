//
//  UIApplication.swift
//  CryptoApp
//
//  Created by Siran Li on 1/30/23.
//

import Foundation
import SwiftUI

extension UIApplication {
    
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
