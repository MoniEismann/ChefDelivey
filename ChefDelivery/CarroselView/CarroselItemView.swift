//
//  CarroselItemView.swift
//  ChefDelivery
//
//  Created by Igor fe Castro Figueiredo on 17/05/24.
//

import SwiftUI

struct CarroselItemView: View {
    
    let order: OrderType
    
    var body: some View {
        Image(order.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

struct CarroselItemView_Preview: PreviewProvider{
    static var previews: some View{
        CarroselItemView(order: OrderType(id: 1, name: "", image: "barbecue-banner"))
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
