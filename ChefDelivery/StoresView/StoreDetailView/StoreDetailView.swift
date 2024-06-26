//
//  StoreDetailView.swift
//  ChefDelivery
//
//  Created by Igor fe Castro Figueiredo on 21/06/24.
//

import SwiftUI

struct StoreDetailView: View {
    let store: StoreType
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(alignment: .leading) {
                
                StoreDetailHeaderView(store: store)
                
                StoreDetailProductsView(products: store.products)
                
            }
        }
        .navigationTitle(store.name)
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarBackButtonHidden()
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading){
                Button{
                    presentationMode.wrappedValue.dismiss()
                } label: {                        HStack(spacing: 4){
                    Image(systemName: "cart")
                    
                    Text("Lojas")
                }
                .foregroundColor(Color("Red"))
                }
            }
        }
    }
    
    struct StoreDetailView_Previews: PreviewProvider {
        static var previews: some View{
            StoreDetailView(store: storesMock[0])
        }
    }
}
