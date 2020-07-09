
//  FlickrData.swift
//  Virtual Tourist
//
//  Created by Amit Biswas on 5/14/20.
//  Copyright © 2020 Amit Biswas. All rights reserved.
//

import Foundation

struct PhotoResponse: Codable {
    let photos: Photos
    let stat: String
}

// MARK: - Photos
struct Photos: Codable {
    let page, pages, perpage: Int
    let total: String
    let photo: [PhotoStruct]
}
