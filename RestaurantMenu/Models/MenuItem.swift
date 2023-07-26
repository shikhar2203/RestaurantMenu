//
//  MenuItem.swift
//  RestaurantMenu
//
//  Created by shikhar on 22/07/23.
//

import Foundation
import SwiftUI

struct MenuItem: Identifiable {
    let id = UUID()
    let name: String
    var isFavorite: Bool
    let menu: [Variant]
}

let menuData = [MenuItem(name: "Burger", isFavorite: false, menu: BurgerMenu), MenuItem(name: "Pizza", isFavorite: false, menu: PizzaMenu), MenuItem(name: "Pasta", isFavorite: true, menu: PizzaMenu),MenuItem(name: "Lemonade", isFavorite: false, menu: BurgerMenu), MenuItem(name: "Lasagna", isFavorite: false, menu: PizzaMenu)]
