//
//  Pin+Extension.swift
//  VirtualTourist
//
//  Created by Amit Biswas on 5/19/20.
//  Copyright © 2020 Amit Biswas. All rights reserved.
//

import Foundation
import CoreData

extension Pin {
    public override func awakeFromInsert() {
        super.awakeFromInsert()
        creationDate = Date()
    }
}
