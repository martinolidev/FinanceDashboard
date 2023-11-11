//
//  ContentView.swift
//  FinanceDashboard
//
//  Created by Martin Martinez on 10/11/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack(alignment: .bottom) {
            TabView {
                FirstScreen()
                    .tabItem {
                        Image(systemName: "house")
                            .foregroundColor(Color.black)
                        Text("Home")
                    }
                CartScreen()
                    .tabItem {
                        Image(systemName: "cart")
                        Text("Cart")
                    }
                FirstScreen()
                    .tabItem {
                        Image(systemName: "creditcard")
                        Text("Payment")
                    }
                FirstScreen()
                    .tabItem {
                        Image(systemName: "gearshape")
                        Text("Settings")
                    }
            }
            .accentColor(.black)
            
        }
    }
}

#Preview {
    ContentView()
}
