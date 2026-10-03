//
//  ContentView.swift
//  Ledgr
//
//  Created by Saahil Rahman on 19/08/2026.
//
import SwiftUI

struct DashboardView: View {
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
                    
                    Text("£0.00")
                        .font(.system(size: 60)) // size of text
                    
                    Text("Remaining for this month")
                        .font(.footnote) // style of text
                        .foregroundStyle(.secondary) //style of text
                
                }
                .padding()
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(Color(red: 0.855, green: 0.969, blue: 0.863)) //RGB value for Mint Green
                .clipShape(RoundedRectangle(cornerRadius: 22)) // Rounded the border
                
                
                Text("RECENT SPENDING")
                    .font(.system(size: 20)) // size of text
                HStack{ //Horizontal Stack
                    VStack(alignment: .leading){
                        Text("Coffee")
                        Text("Today")
                            .font(.footnote)
                            .foregroundStyle(.secondary)
                    }
                    Spacer()//Space
                    Text("£3.50")
                }
            
            }
            .frame(maxWidth: .infinity, alignment: .leading)
        }
        
        .padding()
    }
}


#Preview{
    DashboardView()
}
