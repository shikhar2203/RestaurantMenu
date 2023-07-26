//
//  ContentView.swift
//  RestaurantMenuClip
//
//  Created by shikhar on 22/07/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationView{
            MenuList(menuitem: menuData[0])
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
