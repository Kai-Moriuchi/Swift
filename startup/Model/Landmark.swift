//
//  Landmark.swift
//  startup
//
//  Created by Kai on 2021/08/22.
//

import Foundation
import SwiftUI
import CoreLocation

// Codable:JSONを自分の好きな型に変換し，アクセスが容易にすることができる(インスタンス.nameとかでアクセスできる)
struct Landmark: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    var isFavorite: Bool
    var isFeatured: Bool
    
    var category: Category
    enum Category: String, CaseIterable, Codable {
        case lakes = "Lakes"
        case rivers = "Rivers"
        case mountains = "Mountains"
    }
    
    private var imageName: String
    var image: Image{
        Image(imageName)
    }
    var featureImage: Image? {
        isFeatured ? Image(imageName + "_feature") : nil //isFeaturedがtrueならImage()をFalseならnilを返す
    }
    
    private var coordinates: Coordinates
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
        latitude: coordinates.latitude,
        longitude: coordinates.longitude
        )
    }
    
    struct Coordinates: Hashable, Codable{
        var latitude: Double
        var longitude: Double
    }
}
