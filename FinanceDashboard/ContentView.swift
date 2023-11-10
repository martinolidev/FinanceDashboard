//
//  ContentView.swift
//  FinanceDashboard
//
//  Created by Martin Martinez on 10/11/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
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
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
