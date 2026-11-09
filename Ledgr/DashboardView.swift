//
//  ContentView.swift
//  Ledgr
//
//  Created by Saahil Rahman on 19/08/2026 - 21/05/2027
//
import SwiftUI

struct DashboardView: View {
    @AppStorage("monthlyAmount") private var monthlyAmount = ""
    @State private var showingAddExpense = false
    @Binding var expenses: [Expense]
    var body: some View {
        ScrollView{
            VStack(alignment: .leading, spacing: 10){
                VStack(alignment: .leading, spacing: 5) { // First Vertical Stack
                    Text("Welcome, Saahil")
                        .font(.subheadline) // makes the font subheading style
                        .foregroundStyle(.secondary) // makes it lighter, softer and less prominent
                    Text("LEDGR")
                        .font(.largeTitle)
                        .bold()
                    
                }
                VStack(alignment: .leading){ // Budget Overview Vertical Stack
                    Text("THIS MONTH")
                        .font(.footnote)// style of text
                        .foregroundStyle(.secondary) // lighter
                        .bold() //bold text
                    
                    Text("£\(monthlyAmount)")
                        .font(.system(size: 60)) // size of text
                    
                    Text("Remaining for this month")
                        .font(.footnote) // style of text
                        .foregroundStyle(.secondary) //style of text
                    
                }
                .padding()
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(Color(red: 0.855, green: 0.969, blue: 0.863)) //RGB value for Mint Green
                .clipShape(RoundedRectangle(cornerRadius: 22)) // Rounded the border
                
                
                Button {
                    showingAddExpense = true
                } label: {
                    Label("Add expense",systemImage: "plus")
                }
                
                
                Text("RECENT SPENDING")
                    .font(.system(size: 20)) // size of text
                HStack{ //Horizontal Stack
                    Image(systemName: "cup.and.saucer")
                        .font(.title3) // size of image
                        .padding() // circular mint category icon
                        .background(Color(red: 0.855, green: 0.969, blue: 0.863))
                        .clipShape(Circle())
                    VStack(alignment: .leading){
                        Text("Coffee")
                        Text("Today")
                            .font(.footnote)
                            .foregroundStyle(.secondary)
                    }
                    Spacer()//Space
                    Text("£3.50")
                }
                Divider()
                HStack{ //Horizontal Stack
                    Image(systemName: "cart")
                        .font(.title3) //size of image
                        .padding()
                        .background(Color(red: 0.333, green: 0.796, blue: 0.949)) //RGB value for Blue
                        .clipShape(Circle())
                    VStack(alignment: .leading){
                        Text("Tesco")
                        Text("Yesterday")
                            .font(.footnote)
                            .foregroundStyle(.secondary)
                    }
                    Spacer()//Space
                    Text("£18.50")
                }
                .frame(maxWidth: .infinity, alignment: .leading) // Use as much space as allowed.
            }
            
            .padding()
        }
        .sheet(isPresented: $showingAddExpense) {
            AddExpenseView()
            
        }
    }
}


#Preview{
    DashboardView(expenses: .constant([]))
}
