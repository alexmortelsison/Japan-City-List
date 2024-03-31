//
//  CityCellView.swift
//  Japan City List
//
//  Created by Alex Sison on 3/31/24.
//

import SwiftUI

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
