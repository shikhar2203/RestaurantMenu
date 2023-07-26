//
//  VariantList.swift
//  RestaurantMenu
//
//  Created by shikhar on 22/07/23.
//

import Foundation
import SwiftUI

struct ShopList: View{
    @Binding var shops: [MenuItem]
    let tabTitle: String
    let hideFav: Bool
    
    var showFav: [MenuItem] {
        hideFav ? shops.filter{ $0.isFavorite == true } :shops
    }
    
    private func setFavorite(_ favorite: Bool, for shop: MenuItem) {
        if let index = shops.firstIndex(where: {
            $0.id == shop.id}) {
            shops[index].isFavorite = favorite
        }
    }
    
    var body: some View {
        List(showFav) { fav in
            NavigationLink(destination: MenuList(menuitem: fav)) {
                Label("\(fav.name)",
            systemImage: fav.isFavorite ? "heart.fill": "heart")
                    .contextMenu {
                      Button("Like") {
                        setFavorite(true, for: fav)
                      }
                      Button("Unlike") {
                        setFavorite(false, for: fav)
                      }
                    }
            }
        }
        .navigationTitle(tabTitle)
    }
    
    
}
