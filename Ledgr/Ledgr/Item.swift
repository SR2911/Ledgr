//
//  Item.swift
//  Ledgr
//
//  Created by Saahil Rahman on 19/08/2026.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
