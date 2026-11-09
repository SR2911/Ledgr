//
//  Expense.swift
//  Ledgr
//
//  Created by Saahil Rahman on 09/11/2026.
//

import Foundation


struct Expense: Identifiable {
    let id = UUID()
    let name: String
    let category: String
    let amount: Double
    let date: Date
}
