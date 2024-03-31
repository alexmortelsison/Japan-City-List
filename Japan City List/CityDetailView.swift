//
//  CityDetailView.swift
//  Japan City List
//
//  Created by Alex Sison on 3/31/24.
//

import SwiftUI

struct CityDetailView: View {
    let city: City
    @State private var zoomed: Bool = false
    var body: some View {
        VStack {
            Text(city.name)
                .font(/*@START_MENU_TOKEN@*/ .title/*@END_MENU_TOKEN@*/)
            Image(city.photo)
                .resizable()
                .aspectRatio(contentMode: zoomed ? .fill : .fit)
                .onTapGesture {
                    withAnimation {
                        zoomed.toggle()
                    }
                }

            Text("Population: \(city.population.formatted())M")
        }
        .navigationTitle("City Details")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationStack {
        CityDetailView(city: City(name: "Osaka", photo: "osaka", population: 2.691))
    }
    .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
    
}

