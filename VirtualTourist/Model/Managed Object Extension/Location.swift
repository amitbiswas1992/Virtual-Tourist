//
//  Location.swift
//  VirtualTourist
//
//  Created by Amit Biswas on 5/19/20.
//  Copyright © 2020 Amit Biswas. All rights reserved.
//

import Foundation

struct Location: Codable {
    let latitude: Double
    let longitude: Double
    let location: String
    let country: String
    
    enum CodingKeys: String, CodingKey {
        case location, country, latitude, longitude
    }
}
