//
//  CartScreen.swift
//  FinanceDashboard
//
//  Created by Martin Martinez on 11/11/23.
//

import SwiftUI

struct CartScreen: View {
    var body: some View {
        VStack {
            
            //top bar
            HStack {
                Button {
                    //
                } label: {
                    Circle()
                        .foregroundColor(.white)
                        .frame(width: 50)
                        .overlay(
                            Image(systemName: "person.fill")
                                .foregroundColor(.black)
                                .font(.title)
                        )
                }
                
                Text("Cart")
                    .font(.title)
                    .bold()
                
                Spacer()
                
                Image(systemName: "cart")
                    .font(.title)
                    .bold()
            }
        }
        .padding()
    }
}

#Preview {
    CartScreen()
}
