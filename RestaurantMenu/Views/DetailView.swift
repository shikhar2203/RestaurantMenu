//
//  DetailView.swift
//  RestaurantMenu
//
//  Created by shikhar on 22/07/23.
//

import SwiftUI

struct DetailView: View {
    @State private var orderPlaced = false
    let variant: Variant
    
    private func placeOrder(){
        orderPlaced = true
    }
    
    var body: some View {
        
        VStack{
            Image(variant.imageName)
                .resizable()
                .frame(maxWidth: 300, maxHeight: 400)
                .aspectRatio(contentMode: .fit)
            Text(variant.name)
                .font(.title)
            Divider()
            Text("\(variant.calories) calories")
                .font(.subheadline)
                .padding(15)
            Button(action: {placeOrder() }) {
                Text("Place Order")
                    .foregroundColor(.white)
            }
            .frame(minWidth: 100,maxWidth: 400)
            .frame(height: 50)
            .background(Color.purple)
            .cornerRadius(10)
        }
        .padding(15)
        .navigationBarTitle(Text(variant.name), displayMode: .inline)
        .sheet(isPresented: $orderPlaced, onDismiss: nil) {
            OrderPlacedView(variant: variant)
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(variant: menuData[0].menu[0])
    }
}
