//
//  ContentView.swift
//  RestaurantMenu
//
//  Created by shikhar on 20/07/23.
//

import SwiftUI
import CoreData

struct ContentView: View {
    
    var body: some View{
        VariantView()
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
