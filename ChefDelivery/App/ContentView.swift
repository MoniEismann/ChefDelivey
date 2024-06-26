//
//  ContentView.swift
//  ChefDelivery
//
//  Created by Igor fe Castro Figueiredo on 16/05/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack(spacing: 0){
                NavigationBar()
                    .padding(.horizontal, 15)
                    .padding(.top, 10)
                
                ScrollView(.vertical, showsIndicators: false){
                    VStack(spacing: 20) {
                        OrderTypeGridView()
                        CarroselTabView()
                        StoresContainerView()
                    }
                }
            }
        }
    }
}
    struct ContentView_Preview: PreviewProvider{
        static var previews: some View{
            ContentView()
                .previewLayout(.sizeThatFits)
        }
    }
