//
//  movies.swift
//  Movie
//
//  Created by Eman on 16/01/2035.
//

import Foundation
import UIKit
class movies
{
 var title = ""
    var image : UIImage?
    var rating = 0.0
    var releaseYear = 0
    var gener :[String]?
    var images :String?
    init(title: String = "", image: UIImage? = nil, rating: Double = 0.0, releaseYear: Int = 0, gener: [String]? = nil, images: String? = nil) {
        self.title = title
        self.image = image
        self.rating = rating
        self.releaseYear = releaseYear
        self.gener = gener
        self.images = images
    }
//    init(title: String = "", image: String? = nil, rating: Double = 0.0, releaseYear: Int = 0, gener: [String]? = nil) {
//        self.title = title
//       // self.image = image
//        self.rating = rating
//        self.releaseYear = releaseYear
//        self.gener = gener
//    }
}
