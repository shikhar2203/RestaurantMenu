//
//  MenuList.swift
//  RestaurantMenu
//
//  Created by shikhar on 22/07/23.
//

import SwiftUI

struct MenuList: View {
    let menuitem: MenuItem
    
    var body: some View {
        List(menuitem.menu, id: \.id){ item in
            
            NavigationLink(destination: DetailView(variant: item)) {
                Text(item.name)
            }
            
        }
        .navigationTitle(menuitem.name)
       
    }
}

struct MenuList_Previews: PreviewProvider {
    static var previews: some View {
        MenuList(menuitem: menuData[0])
    }
}
