//
//  NavigationBar.swift
//  ChefDelivery
//
//  Created by Igor fe Castro Figueiredo on 16/05/24.
//

import SwiftUI

struct NavigationBar: View {
    var body: some View {
        HStack{
            Spacer()
            Button("R. Vergueiro, 3185") {
                
            }
            .font(.subheadline)
            .fontWeight(.semibold)
            .foregroundColor(.black)
            
            Spacer()
            
            Button(action: {}) {
                Image(systemName: "bell.badge")
                    .font(.title3)
                    .foregroundColor(.red)
            }
        }
    }
}

struct NavigationBar_Preview: PreviewProvider{
        static var previews: some View{
            NavigationBar()
                .previewLayout(.sizeThatFits)
                .padding()
    }
}
