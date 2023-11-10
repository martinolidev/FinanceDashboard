//
//  HorizontalScrollCards.swift
//  FinanceDashboard
//
//  Created by Martin Martinez on 10/11/23.
//

import SwiftUI

struct HorizontalScrollCards: View {
    var body: some View {
        ScrollView(.horizontal) {
            
            HStack {
                RoundedRectangle(cornerRadius: 30)
                    .frame(width: 200, height: 150)
                    .foregroundColor(.indigo)
                    .overlay(
                        VStack(alignment: .leading){
                            HStack {
                                Image(systemName: "creditcard.fill")
                                    .foregroundColor(.white)
                                    .font(.title)
                                    .bold()
                                
                                VStack(alignment: .leading) {
                                    Text("$10.00")
                                        .foregroundColor(.white)
                                        .bold()
                                        .font(.title2)
                                    Text("Per month")
                                        .foregroundColor(.white)
                                        .bold()
                                        .font(.title3)
                                }
                            } .padding()
                            
                            Text("Valorant")
                                .font(.title2)
                                .bold()
                                .foregroundColor(.white)
                                .padding(.horizontal)
                        }
                    )
                RoundedRectangle(cornerRadius: 30)
                    .frame(width: 200, height: 150)
                    .foregroundColor(.orange)
                    .overlay(
                        VStack(alignment: .leading){
                            HStack {
                                Image(systemName: "creditcard.fill")
                                    .foregroundColor(.white)
                                    .font(.title)
                                    .bold()
                                
                                VStack(alignment: .leading) {
                                    Text("$20.00")
                                        .foregroundColor(.white)
                                        .bold()
                                        .font(.title2)
                                    Text("Per month")
                                        .foregroundColor(.white)
                                        .bold()
                                        .font(.title3)
                                }
                            } .padding()
                            
                            Text("R6 Siege")
                                .font(.title2)
                                .bold()
                                .foregroundColor(.white)
                                .padding(.horizontal)
                        }
                    )
                
                RoundedRectangle(cornerRadius: 30)
                    .frame(width: 200, height: 150)
                    .foregroundColor(.pink)
                    .overlay(
                        VStack(alignment: .leading){
                            HStack {
                                Image(systemName: "creditcard.fill")
                                    .foregroundColor(.white)
                                    .font(.title)
                                    .bold()
                                
                                VStack(alignment: .leading) {
                                    Text("$5.00")
                                        .foregroundColor(.white)
                                        .bold()
                                        .font(.title2)
                                    Text("Per month")
                                        .foregroundColor(.white)
                                        .bold()
                                        .font(.title3)
                                }
                            } .padding()
                            
                            Text("Fornite")
                                .font(.title2)
                                .bold()
                                .foregroundColor(.white)
                                .padding(.horizontal)
                        }
                    )
            }
        
        }
    }
}

#Preview {
    HorizontalScrollCards()
}
