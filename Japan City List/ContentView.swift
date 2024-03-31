//
//  ContentView.swift
//  Japan City List
//
//  Created by Alex Sison on 3/31/24.
//

import SwiftUI

struct ContentView: View {
   
    var body: some View {
        NavigationStack {
            List(cities) { city in
                NavigationLink(value: city) {
                    CityCellView(city: city)
                }
            }
            .listStyle(.inset)
            .padding()
            .navigationTitle("Japan Cities")
            .navigationBarTitleDisplayMode(.inline)
            .navigationDestination(for: City.self) { city in
                CityDetailView(city: city)
            }
        }
    }
}

#Preview {
    ContentView()
        .preferredColorScheme(/*@START_MENU_TOKEN@*/ .dark/*@END_MENU_TOKEN@*/)
}


