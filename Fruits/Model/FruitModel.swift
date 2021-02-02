//
//  FruitModel.swift
//  Fruits
//
//  Created by GeoSpark Mac 15 on 29/01/21.
//

import SwiftUI

// MARK: -- FRUIT DATA MODEL

struct Fruit:Identifiable {
    var id = UUID()
    var title:String
    var headline:String
    var image:String
    var gradientColors:[Color]
    var description:String
    var nutrition:[String]
}
