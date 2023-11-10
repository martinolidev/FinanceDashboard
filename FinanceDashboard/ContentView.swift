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
                Circle()
                    .frame(width: 50)
                    .overlay(
                        Image(systemName: "person.fill")
                            .foregroundColor(.white)
                            .font(.title)
                    )
                
                Text("Martin Martinez")
                    .font(.title2)
                    .bold()
                
                Spacer()
                
                Circle()
                    .stroke(Color.black, lineWidth: 2.0)
                    .frame(width: 50)
                    .overlay(
                        Image(systemName: "plus")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20)
                            .font(.title)
                            .bold()
                    )
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
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
