//
//  VariantView.swift
//  RestaurantMenu
//
//  Created by shikhar on 22/07/23.
//

import SwiftUI

struct VariantView: View {
    @State var shops = menuData
    
    var body: some View {
        
        TabView{
            NavigationView{
                ShopList(shops: $shops, tabTitle: "Foods", hideFav: false)
                MenuList(menuitem: shops[0])
            }
            .tabItem {
                Label("Foods", systemImage: "takeoutbag.and.cup.and.straw.fill")
            }
            
            NavigationView{
                ShopList(shops: $shops, tabTitle: "Favorite Foods", hideFav: true)
                MenuList(menuitem: shops[0])
            }
            .tabItem {
              Label("Favorites", systemImage: "heart.fill")
            }
            
            
        }
    }
}

struct VariantView_Previews: PreviewProvider {
    static var previews: some View {
        VariantView()
    }
}
