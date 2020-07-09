//
//  Photo.swift
//  VirtualTourist
//
//  Created by Amit Biswas on 5/19/20.
//  Copyright © 2020 Amit Biswas. All rights reserved.
//

import Foundation
import UIKit

// MARK: - Photo
struct PhotoStruct: Codable {
    var photoImage: UIImage?
    let id, owner, secret, server: String
    let farm: Int
    let title: String
    let ispublic, isfriend, isfamily: Int
    let url_m: String

    
    enum CodingKeys: String, CodingKey {
        case id, owner, secret, server, farm, title, ispublic, isfriend, isfamily
        case url_m = "url_m"

    }
}
