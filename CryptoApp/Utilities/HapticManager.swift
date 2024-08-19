//
//  HapticManager.swift
//  CryptoApp
//
//  Created by Siran Li on 8/18/24.
//

import Foundation
import SwiftUI

final class HapticManager {
    private static let generator = UINotificationFeedbackGenerator()
    
    static func notification(type: UINotificationFeedbackGenerator.FeedbackType) {
        DispatchQueue.main.async {
            generator.notificationOccurred(type)
        }
    }
}
