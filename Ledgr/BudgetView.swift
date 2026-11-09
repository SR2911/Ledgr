//
//  BudgetView.swift
//  Ledgr
//
//  Created by Saahil Rahman on 09/11/2026.
//

import SwiftUI

struct BudgetView: View {
    @AppStorage("monthlyAmount") private var monthlyAmount = ""
    var body: some View {
        VStack(alignment: .leading, spacing: 24) { // First Vertical Stack
            VStack(alignment: .leading, spacing: 5){
                Text("BUDGET")
                    .font(.largeTitle)
                    .bold()
                Text("Set the amount you have available this month")
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
                
            }
            Text("MONTHLY AMOUNT")
                .font(.footnote)// style of text
                .foregroundStyle(.secondary) // lighter
                .bold() //bold text
            HStack{
                Text("£")
                TextField("0.00",text: $monthlyAmount)
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
    BudgetView()
}
