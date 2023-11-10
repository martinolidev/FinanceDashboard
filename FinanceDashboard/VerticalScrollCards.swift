//
//  VerticalScrollCards.swift
//  FinanceDashboard
//
//  Created by Martin Martinez on 10/11/23.
//

import SwiftUI

struct VerticalScrollCards: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .frame(width: 380,height: 80)
            .foregroundColor(.pink)
            .overlay(
                HStack {
                    Image(systemName: "laptopcomputer")
                        .font(.title)
                        .foregroundColor(.white)
                        .bold()
                        
                    
                    VStack(alignment: .leading) {
                        Text("Macbook Air")
                            .font(.title2)
                        Text("January 1, 10:00 pm")
                            .font(.footnote)
                    }
                    .foregroundColor(.white)
                    .bold()
                    .padding(.horizontal)
                    
                    VStack {
                        Text("$100.00")
                            .font(.title2)
                        Text("Per month")
                            .font(.footnote)
                    }
                    .foregroundColor(.white)
                    .bold()
                    .padding(.horizontal)
                }
            )
        
        RoundedRectangle(cornerRadius: 10)
            .frame(width: 380,height: 80)
            .foregroundColor(.blue)
            .overlay(
                HStack {
                    Image(systemName: "wifi")
                        .font(.title)
                        .foregroundColor(.white)
                        .bold()
                        
                    
                    VStack(alignment: .leading) {
                        Text("Internet")
                            .font(.title2)
                        Text("January 10, 12:00 pm")
                            .font(.footnote)
                    }
                    .foregroundColor(.white)
                    .bold()
                    .padding(.horizontal)
                    
                    VStack {
                        Text("$49.99")
                            .font(.title2)
                        Text("Per month")
                            .font(.footnote)
                    }
                    .foregroundColor(.white)
                    .bold()
                    .padding(.horizontal)
                }
            )
        
        RoundedRectangle(cornerRadius: 10)
            .frame(width: 380,height: 80)
            .foregroundColor(.teal)
            .overlay(
                HStack {
                    Image(systemName: "doc.text")
                        .font(.title)
                        .foregroundColor(.white)
                        .bold()
                        
                    
                    VStack(alignment: .leading) {
                        Text("Credit Bank")
                            .font(.title2)
                        Text("January 30, 09:00 pm")
                            .font(.footnote)
                    }
                    .foregroundColor(.white)
                    .bold()
                    .padding(.horizontal)
                    
                    VStack {
                        Text("$290.00")
                            .font(.title2)
                        Text("Per month")
                            .font(.footnote)
                    }
                    .foregroundColor(.white)
                    .bold()
                    .padding(.horizontal)
                }
            )
    }
}

#Preview {
    VerticalScrollCards()
}
