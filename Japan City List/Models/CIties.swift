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
    let population : Double
}
