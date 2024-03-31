//
//  ContentView.swift
//  Japan City List
//
//  Created by Alex Sison on 3/31/24.
//

import SwiftUI

struct ContentView: View {
    let cities = [City(name: "Tokyo", photo: "tokyo", population: 13.96),
                  City(name: "Osaka", photo: "osaka", population: 2.691),
                  City(name: "Hiroshima", photo: "hiroshima", population: 1.194)]

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

struct CityCellView: View {
    let city: City
    var body: some View {
        HStack(alignment: .top) {
            Image(city.photo)
                .resizable()
                .scaledToFit()
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 150)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            VStack(alignment: .leading, spacing: 5) {
                Text(city.name)
                    .font(.largeTitle)
                    .foregroundStyle(Color.blue)
                Text("Population : \(city.population.formatted())M")
                    .font(.title2)
            }
        }
    }
}
