//
//  AddExpenseView.swift
//  Ledgr
//
//  Created by Saahil Rahman on 09/11/2026.
//

import SwiftUI

struct AddExpenseView: View {
    @State private var expenseName = ""
    @State private var selectedCategory = "Food & Drink"
    @State private var expenseAmount = ""
    var body: some View {
        VStack(alignment: .leading, spacing: 24) {
            Text("ADD EXPENSE")
                .font(.largeTitle)
                .bold()
            Text("EXPENSE NAME")
                .font(.footnote)
                .foregroundStyle(.secondary)
                .bold()
            TextField("Name of expense", text: $expenseName)
            
            Text("CATEGORY")
                .font(.footnote)
                .foregroundStyle(.secondary)
                .bold()
            Picker("Category",selection: $selectedCategory) {
                Text("Food & Drink")
                    .tag("Food & Drink")
                Text("Transport")
                    .tag("Transport")
                Text("Shopping")
                    .tag("Shopping")
                Text("Health")
                    .tag("Health")
                Text("Entertainment")
                    .tag("Entertainment")
                Text("Family")
                    .tag("Family")
                Text("Education")
                    .tag("Education")
                Text("Other")
                    .tag("Other")
            }
            .pickerStyle(.menu)
            
            Text("EXPENSE AMOUNT")
                .font(.footnote)
                .foregroundStyle(.secondary)
                .bold()
            HStack{
                Text("£")
                TextField("0.00",text: $expenseAmount)
                    .keyboardType(.decimalPad)
            }
            .font(.title)
            .padding()
            .background(.gray.opacity(0.12))
            .clipShape(RoundedRectangle(cornerRadius: 16))
            
        }
        .padding()
        
    }
}

#Preview {
    AddExpenseView()
}
