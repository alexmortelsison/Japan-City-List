//
//  CIties.swift
//  Japan City List
//
//  Created by Alex Sison on 3/31/24.
//

import Foundation

struct City: Identifiable, Hashable {
    let id = UUID()
    let name: String
    let photo: String
    let population: Double
}

let cities = [City(name: "Tokyo", photo: "tokyo", population: 13.96),
              City(name: "Osaka", photo: "osaka", population: 2.691),
              City(name: "Hiroshima", photo: "hiroshima", population: 1.194)]
