//
//  CarroselTabView.swift
//  ChefDelivery
//
//  Created by Igor fe Castro Figueiredo on 17/05/24.
//

import SwiftUI

struct CarroselTabView: View {
    
    @State private var currentIndex = 1
    
    let orderMock: [OrderType] = [
        OrderType(id: 1, name: "banner burguer", image: "barbecue-banner"),
        OrderType(id: 2, name: "banner prato feito", image: "brazilian-meal-banner"),
        OrderType(id: 3, name: "banner poke", image: "pokes-banner")
    ]
    
    var body: some View {
        TabView(selection: $currentIndex) {
            ForEach(orderMock) { mock in
                CarroselItemView(order: mock)
                    .tag(mock.id)
            }
        }
        .frame(height: 180)
        .tabViewStyle(.page(indexDisplayMode:.always))
        .onAppear{
            Timer.scheduledTimer(withTimeInterval: 3, repeats: true) { _ in
                
                withAnimation(.easeInOut(duration: 1)){
                    if currentIndex > orderMock.count {
                        currentIndex = 1
                    }
                    currentIndex += 1
                }
                
            }
        }
    }
}

struct CarroselTabView_Preview: PreviewProvider{
    static var previews: some View{
        CarroselTabView()
    }
}
