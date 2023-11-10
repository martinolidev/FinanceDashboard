//
//  ContentView.swift
//  FinanceDashboard
//
//  Created by Martin Martinez on 10/11/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var isToggleOn = false
    
    var body: some View {
        VStack {
            //Top bar
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
                
                Text("Martin Martinez")
                    .font(.title2)
                    .bold()
                
                Spacer()
                
                Button {
                    //
                } label: {
                    Circle()
                        .stroke(Color.black, lineWidth: 2)
                        .frame(width: 50)
                        .foregroundColor(.clear)
                        .overlay(
                            Image(systemName: "plus")
                                .bold()
                                .font(.title2)
                                .foregroundColor(.black)
                        )
                }
            }
            
            //Body
            RoundedRectangle(cornerRadius: 25.0)
                .frame(width: 350, height: 150)
                .foregroundColor(.indigo)
                .overlay(
                    VStack {
                        HStack{
                            Text("Balance")
                                .bold()
                                .font(.title2)
                                .padding()
                                .foregroundColor(.white)
                            Spacer()
                            Toggle("",isOn: $isToggleOn)
                                .padding()
                                .toggleStyle(SwitchToggleStyle(tint: .black))
                        }
                        HStack {
                            if isToggleOn {
                                Text("$2450.56")
                                    .font(.title2)
                                    .padding()
                                    .foregroundColor(.white)
                                    .bold()
                                Spacer()
                                
                                Text("10/2023")
                                    .padding()
                                    .font(.title2)
                                    .bold()
                                    .foregroundColor(.white)
                            } else {
                                Image(systemName: "lock.fill")
                                    .foregroundColor(.white)
                                    .font(.title2)
                                    .bold()
                                
                            }
                        }

                    }
                )
            
            HStack {
                Text("Upcoming")
                    .font(.title2)
                    .bold()
                Spacer()
                Button {
                    //
                } label: {
                    RoundedRectangle(cornerRadius: 25.0)
                        .stroke(Color.black, lineWidth: 2)
                        .frame(width: 100, height: 30)
                        .foregroundColor(.clear)
                        .overlay(
                            Text("View All")
                                .foregroundColor(.black)
                                .bold()
                        )
                        
                }
            }
            
            //Horzontal scroll body cards
           HorizontalScrollCards()
            
            //Subscriptions scroll cards
            HStack {
                Text("Expense Summary")
                    .font(.title2)
                    .bold()
                Spacer()
                Button {
                    //
                } label: {
                    RoundedRectangle(cornerRadius: 25.0)
                        .stroke(Color.black, lineWidth: 2)
                        .frame(width: 100, height: 30)
                        .foregroundColor(.clear)
                        .overlay(
                            Text("View All")
                                .foregroundColor(.black)
                                .bold()
                        )
                }
            }
            
            ScrollView {
                Grid {
                    GridRow {
                        RoundedRectangle(cornerRadius: 10)
                            .frame(height: 80)
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
                                        Text("November 1, 10:00 pm")
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
                    }
                    
                    GridRow {
                        RoundedRectangle(cornerRadius: 10)
                            .frame(height: 80)
                            .foregroundColor(.yellow)
                    }
                    
                    GridRow {
                        RoundedRectangle(cornerRadius: 10)
                            .frame(height: 80)
                            .foregroundColor(.mint)
                    }
                    GridRow {
                        RoundedRectangle(cornerRadius: 10)
                            .frame(height: 80)
                            .foregroundColor(.cyan)
                    }
                }
            }

        }
        .padding()
    }
}

#Preview {
    ContentView()
}
