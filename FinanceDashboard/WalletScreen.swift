//
//  WalletScreen.swift
//  FinanceDashboard
//
//  Created by Martin Martinez on 11/11/23.
//

import SwiftUI

struct WalletScreen: View {
    @State var isToggleOn = false
    
    var body: some View {
        VStack {
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
                
                Text("My wallet")
                    .font(.title)
                    .bold()
                
                Spacer()
                
                Toggle("", isOn: $isToggleOn)
                    .toggleStyle(SwitchToggleStyle(tint: .black))
            }
            
            ScrollView {
                
                if isToggleOn {
                    RoundedRectangle(cornerRadius: 25.0)
                        .foregroundColor(.indigo)
                        .frame(height: 100)
                        .overlay(
                            HStack {
                                Image(systemName: "creditcard")
                                    .foregroundColor(.white)
                                    .bold()
                                    .font(.title)
                                
                                VStack {
                                    Text("Paypal")
                                        .font(.title)
                                        .foregroundColor(.white)
                                        .bold()
                                }
                            }.padding()
                        )
                    
                    RoundedRectangle(cornerRadius: 25.0)
                        .foregroundColor(.mint)
                        .frame(height: 100)
                        .overlay(
                            HStack {
                                Image(systemName: "creditcard")
                                    .foregroundColor(.white)
                                    .bold()
                                    .font(.title)
                                
                                VStack {
                                    Text("Bank of America")
                                        .font(.title)
                                        .foregroundColor(.white)
                                        .bold()
                                }
                            }.padding()
                        )
                    
                    RoundedRectangle(cornerRadius: 25.0)
                        .foregroundColor(.purple)
                        .frame(height: 100)
                        .overlay(
                            HStack {
                                Image(systemName: "creditcard")
                                    .foregroundColor(.white)
                                    .bold()
                                    .font(.title)
                                
                                VStack {
                                    Text("American Express")
                                        .font(.title)
                                        .foregroundColor(.white)
                                        .bold()
                                }
                            }.padding()
                        )
                } else {
                    
                    Circle()
                        .frame(width: 70)
                        .overlay(
                            Image(systemName: "lock.fill")
                                .foregroundColor(.white)
                                .font(.title)
                                .bold()
                        )
                }
            }
            
            Button {
                //
            } label: {
                RoundedRectangle(cornerRadius: 25.0)
                    .frame(width: 100,height: 70)
                    .foregroundColor(.green)
                    .overlay(
                        Image(systemName: "plus")
                            .bold()
                            .foregroundColor(.white)
                            .font(.title)
                    )
            }
            
        }
        .padding()
    }
}

#Preview {
    WalletScreen()
}
