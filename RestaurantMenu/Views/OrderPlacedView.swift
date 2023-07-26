//
//  OrderPlacedView.swift
//  RestaurantMenu
//
//  Created by shikhar on 22/07/23.
//

import SwiftUI

struct OrderPlacedView: View {
  let variant: Variant

  var body: some View {
    VStack {
        
      Image(variant.imageName)
        .resizable()
        .frame(maxWidth: 300, maxHeight: 600)
        .aspectRatio(contentMode: .fit)
        Text("Thank you!\nYour \(variant.name) order is placed!!")
        .lineLimit(2)
        .multilineTextAlignment(.center)
        .padding(15)
    }
  }
}

struct OrderPlacedView_Previews: PreviewProvider {
  static var previews: some View {
      OrderPlacedView(variant: menuData[0].menu[0])
  }
}
