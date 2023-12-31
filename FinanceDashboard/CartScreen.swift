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
            
            //body
            
            ScrollView {
                VerticalScrollCards()
            }
            
            HStack {
                Text("Total: $439.99")
                    .font(.title)
                    .bold()
                
                Spacer()
            }
            
            HStack {
                Button {
                    //
                } label: {
                    RoundedRectangle(cornerRadius: 25.0)
                        .frame(height: 70)
                        .foregroundColor(.green)
                        .overlay(
                            Image(systemName: "dollarsign.circle")
                                .foregroundColor(.white)
                                .font(.title)
                                .bold()
                        )
                }
                
                Button {
                    //
                } label: {
                    RoundedRectangle(cornerRadius: 25.0)
                        .frame(height: 70)
                        .foregroundColor(.red)
                        .overlay(
                            Image(systemName: "trash")
                                .foregroundColor(.white)
                                .font(.title)
                                .bold()
                        )
                }
            }
            
            
        }
        .padding()
    }
}

#Preview {
    CartScreen()
}
