//
//  Variant.swift
//  RestaurantMenu
//
//  Created by shikhar on 22/07/23.
//

import Foundation
import SwiftUI

struct Variant:Identifiable {
    let id = UUID()
    let name: String
    let imageName: String
    let calories: Int
    
}

let BurgerMenu = [Variant(name: "Veg Burger", imageName: "burger", calories: 100), Variant(name: "Veg Cheese Burger", imageName: "burger", calories: 80), Variant(name: "Chicken Burger", imageName: "burger", calories: 95), Variant(name: "Chicken Cheese Burger", imageName: "burger", calories: 150), Variant(name: "Beef Burger", imageName: "burger", calories: 128), Variant(name: "Tokyo Wagyu Burger", imageName: "burger", calories: 200), Variant(name: "Hawaiian Chicken Burger", imageName: "burger", calories: 150)]

let PizzaMenu = [Variant(name: "Margherita Pizza", imageName: "pizza", calories: 300), Variant(name: "Peri Per Veg Pizza", imageName: "pizza", calories: 350), Variant(name: "Al Funghi Pizza", imageName: "pizza", calories: 460), Variant(name: "FarmHouse Pizza", imageName: "pizza", calories: 300), Variant(name: "BBQ Chicken Pizza", imageName: "pizza", calories: 400), Variant(name: "Chicken Overload Pizza", imageName: "piza", calories: 500)]
