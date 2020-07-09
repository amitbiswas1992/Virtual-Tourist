//
//  PhotoViewCell.swift
//  VirtualTourist
//
//  Created by Amit Biswas on 5/17/20.
//  Copyright © 2020 Amit Biswas. All rights reserved.
//

import UIKit
import CoreData

class PhotoViewCell: UICollectionViewCell {
    
   
    @IBOutlet weak var photoImageView: UIImageView!

    static let reuseIdentifier = "PhotoViewCell"
    

    func setPhotoImageView(imageView: UIImage, sizeFit: Bool) {
        photoImageView.image = imageView
        if sizeFit == true {
            photoImageView.sizeToFit()
        }
    }
    
//    override func prepareForReuse() {
//        super.prepareForReuse()
//        self.photoImageView.image = UIImage()
//       
//    }
    
    
}


